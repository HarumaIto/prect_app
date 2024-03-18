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

    DefaultSnackbar.show(context, 'Bluetoothを有効化されています');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final device = useState<BluetoothDevice?>(null);

    void bleScan() async {
      var subscription = FlutterBluePlus.onScanResults.listen(
        (results) {
          if (results.isNotEmpty) {
            ScanResult r = results.last; // the most recently found device
            device.value = r.device;
            debugPrint(
                '${r.device.remoteId}: "${r.advertisementData.advName}" found!');
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

    void bleConnect() async {
      // listen for disconnection
      var subscription = device.value!.connectionState
          .listen((BluetoothConnectionState state) async {
        if (state == BluetoothConnectionState.disconnected) {
          // 1. typically, start a periodic timer that tries to
          //    reconnect, or just call connect() again right now
          // 2. you must always re-discover services after disconnection!
          debugPrint(
              '${device.value!.disconnectReason?.code} ${device.value!.disconnectReason?.description}');
        }
      });

      device.value!
          .cancelWhenDisconnected(subscription, delayed: true, next: true);

      await device.value!.connect();

      subscription.cancel();

      DefaultSnackbar.show(context, '接続しました');
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
              child: const Text('Bluetoothデバイスを検索する'),
            ),
            ElevatedButton(
              onPressed: device.value != null ? bleConnect : null,
              child: const Text('接続する'),
            ),
          ],
        ),
      ),
    );
  }
}
