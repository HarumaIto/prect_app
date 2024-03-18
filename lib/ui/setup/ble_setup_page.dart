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
      body: Column(
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
            },
            child: const Text('Bluetoothを有効化する'),
          ),
        ],
      ),
    );
  }
}
