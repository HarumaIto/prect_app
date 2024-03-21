import 'dart:convert';
import 'dart:io';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

final bleUseCaseProvider = Provider<BleUseCase>((ref) => BleUseCase(ref: ref));

class BleUseCase {
  BleUseCase({required this.ref});

  final Ref ref;

  void bleInit() async {
    // first, check if bluetooth is supported by your hardware
    // Note: The platform is initialized on the first call to any FlutterBluePlus method.
    if (await FlutterBluePlus.isSupported == false) {
      return;
    }

    var subscription =
        FlutterBluePlus.adapterState.listen((BluetoothAdapterState state) {
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
  }

  void bleScan() async {
    var subscription = FlutterBluePlus.onScanResults.listen(
      (results) {
        if (results.isNotEmpty) {
          ScanResult r = results.last; // the most recently found device
          print(
              '${r.device.remoteId}: "${r.advertisementData.advName}" found!');

          // サービスUUIDを設定して検索しているので、見つかった時点で自身のデバイスなので接続する
          bleConnect(r.device);

          FlutterBluePlus.stopScan();
        }
      },
      onError: (e) => print(e),
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

  void bleConnect(BluetoothDevice device) async {
    // listen for disconnection
    var subscription =
        device.connectionState.listen((BluetoothConnectionState state) async {
      if (state == BluetoothConnectionState.disconnected) {
        // 切断された時の処理
      }
    });

    device.cancelWhenDisconnected(subscription, delayed: true, next: true);

    await device.connect();
    ref.read(bleSetupPageProvider.notifier).setBleDevice(
          device.remoteId.str,
          await device.discoverServices(),
        );

    subscription.cancel();
  }

  Future<String> readCharacteristic(
      BluetoothCharacteristic characteristic) async {
    if (characteristic.properties.read) {
      final response = await characteristic.read();
      return String.fromCharCodes(response);
    }
    return '';
  }

  void writeCharacteristic(
      BluetoothCharacteristic characteristic, String value) async {
    if (characteristic.properties.write) {
      final utf8Codes = utf8.encode(value);
      try {
        await characteristic.write(utf8Codes);
      } catch (e) {
        print(e);
      }
    }
  }
}
