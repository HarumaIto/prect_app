import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/components/default_snackbar.dart';

class BleSetupPage extends HookConsumerWidget {
  const BleSetupPage({Key? key}) : super(key: key);

  void bleInit(BuildContext context) async {
    // first, check if bluetooth is supported by your hardware
    // Note: The platform is initialized on the first call to any FlutterBluePlus method.
    if (await FlutterBluePlus.isSupported == false) {
      if (!context.mounted) return;
      DefaultSnackbar.show(context, 'Bluetoothがサポートされていません');
      return;
    }

    var subscription =
        FlutterBluePlus.adapterState.listen((BluetoothAdapterState state) {
      debugPrint(state.toString());
      if (state == BluetoothAdapterState.on) {
        // usually start scanning, connecting, etc
      } else {
        // show an error to the user, etc
      }
    });

    if (Platform.isAndroid) {
      await FlutterBluePlus.turnOn();
    }

    subscription.cancel();

    if (!context.mounted) return;
    DefaultSnackbar.show(context, 'Bluetoothを有効化されています');
  }

  void bleConnect(BluetoothDevice device) async {
    // listen for disconnection
    var subscription =
        device.connectionState.listen((BluetoothConnectionState state) async {
      if (state == BluetoothConnectionState.disconnected) {
        // 1. typically, start a periodic timer that tries to
        //    reconnect, or just call connect() again right now
        // 2. you must always re-discover services after disconnection!
        debugPrint(
            '${device.disconnectReason?.code} ${device.disconnectReason?.description}');
      }
    });

    device.cancelWhenDisconnected(subscription, delayed: true, next: true);

    await device.connect();

    subscription.cancel();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void bleScan() async {
      var subscription = FlutterBluePlus.onScanResults.listen(
        (results) {
          if (results.isNotEmpty) {
            ScanResult r = results.last; // the most recently found device
            debugPrint(
                '${r.device.remoteId}: "${r.advertisementData.advName}" found!');

            // サービスUUIDを設定して検索しているので、見つかった時点で自身のデバイスなので接続する
            bleConnect(r.device);
            DefaultSnackbar.show(context, '${r.device.advName}に接続しました');

            FlutterBluePlus.stopScan();
          }
        },
        onError: (e) => debugPrint(e),
      );

      FlutterBluePlus.cancelWhenScanComplete(subscription);

      await FlutterBluePlus.adapterState
          .where((val) => val == BluetoothAdapterState.on)
          .first;

      await FlutterBluePlus.startScan(
        withServices: [Guid('2222')],
        timeout: const Duration(seconds: 15),
      );

      await FlutterBluePlus.isScanning.where((val) => val == false).first;
    }

    useEffect(() {
      bleInit(context);
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BLEセットアップ'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: bleScan,
              child: const Text('接続する'),
            ),
          ],
        ),
      ),
    );
  }
}
