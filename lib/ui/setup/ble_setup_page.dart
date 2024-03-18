import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BleSetupPage extends ConsumerWidget {
  const BleSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              onPressed: () async {
                // first, check if bluetooth is supported by your hardware
                // Note: The platform is initialized on the first call to any FlutterBluePlus method.
                if (await FlutterBluePlus.isSupported == false) {
                  print("Bluetooth not supported by this device");
                  return;
                }

                var subscription = FlutterBluePlus.adapterState
                    .listen((BluetoothAdapterState state) {
                  print(state);
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

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Bluetoothを有効化しました'),
                ));
              },
              child: const Text('Bluetoothを有効化する'),
            ),
            ElevatedButton(
              onPressed: () async {
                var subscription = FlutterBluePlus.onScanResults.listen(
                  (results) {
                    if (results.isNotEmpty) {
                      ScanResult r =
                          results.last; // the most recently found device
                      print(
                          '${r.device.remoteId}: "${r.advertisementData.advName}" found!');
                    }
                  },
                  onError: (e) => print(e),
                );

                FlutterBluePlus.cancelWhenScanComplete(subscription);

                await FlutterBluePlus.adapterState
                    .where((val) => val == BluetoothAdapterState.on)
                    .first;

                await FlutterBluePlus.startScan(
                    withServices: [Guid("180D")],
                    withNames: ["Bluno"],
                    timeout: Duration(seconds: 15));

                await FlutterBluePlus.isScanning
                    .where((val) => val == false)
                    .first;
              },
              child: const Text('Bluetoothデバイスを検索する'),
            ),
          ],
        ),
      ),
    );
  }
}
