import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

class BleSetupPage extends HookConsumerWidget {
  const BleSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(bleSetupPageProvider);

    print(uiState.services.toString());

    useEffect(() {
      uiState.bleUseCase.bleInit();
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
            const Text('状態'),
            const SizedBox(height: 20),
            if (uiState.remoteId.isEmpty)
              const Text('未接続')
            else
              const Text('接続済み'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  uiState.remoteId.isEmpty ? uiState.bleUseCase.bleScan : null,
              child: const Text('接続する'),
            ),
            const SizedBox(height: 20),
            const Text('SPIFFSデータ'),
            Text('DeviceId: ${uiState.spiffsData.deviceId}'),
            Text('WifiSSID: ${uiState.spiffsData.wifiSsid}'),
            Text('WifiPassword: ${uiState.spiffsData.wifiPassword}'),
            Text('SleepTime: ${uiState.spiffsData.sleepTime}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: uiState.services.isNotEmpty
                  ? () async {
                      final response = await uiState.bleUseCase
                          .readCharacteristic(
                              uiState.services.first.characteristics.first);
                      ref
                          .read(bleSetupPageProvider.notifier)
                          .setSpiffsData(response);
                      print(response);
                    }
                  : null,
              child: const Text('読み取る'),
            ),
          ],
        ),
      ),
    );
  }
}
