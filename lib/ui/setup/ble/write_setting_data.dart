import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

class WriteSettingData extends HookConsumerWidget {
  const WriteSettingData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(bleSetupPageProvider);

    final wifiSsidController = useTextEditingController();
    final wifiPasswordController = useTextEditingController();
    final sleepTimeController = useTextEditingController();

    return Column(
      children: [
        const Text('SPIFFSデータ'),
        Text('DeviceId: ${uiState.spiffsData.deviceId}'),
        Text('WifiSSID: ${uiState.spiffsData.wifiSsid}'),
        Text('WifiPassword: ${uiState.spiffsData.wifiPassword}'),
        Text('SleepTime: ${uiState.spiffsData.sleepTime}'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: uiState.services.isNotEmpty
              ? () async {
                  final response = await uiState.bleUseCase.readCharacteristic(
                      uiState.services.first.characteristics.first);
                  final newSpiffsData = ref
                      .read(bleSetupPageProvider.notifier)
                      .setSpiffsData(response);
                  wifiSsidController.text = newSpiffsData.wifiSsid;
                  wifiPasswordController.text = newSpiffsData.wifiPassword;
                  sleepTimeController.text = newSpiffsData.sleepTime.toString();
                }
              : null,
          child: const Text('読み取る'),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: wifiSsidController,
          decoration: const InputDecoration(labelText: 'WifiSSID'),
        ),
        TextField(
          controller: wifiPasswordController,
          decoration: const InputDecoration(labelText: 'WifiPassword'),
        ),
        TextField(
          controller: sleepTimeController,
          decoration: const InputDecoration(labelText: 'SleepTime'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (wifiSsidController.text.isEmpty ||
                wifiPasswordController.text.isEmpty ||
                sleepTimeController.text.isEmpty) return;
            uiState.bleUseCase.writeCharacteristic(
                uiState.services.first.characteristics.first,
                '${uiState.spiffsData.deviceId},${wifiSsidController.text},${wifiPasswordController.text},${sleepTimeController.text}');
            uiState.registerDeviceUseCase
                .addUserIdForDevice(uiState.spiffsData.deviceId);
            uiState.registerDeviceUseCase.registerDeviceSettings(uiState);
          },
          child: const Text('書き込み'),
        ),
      ],
    );
  }
}
