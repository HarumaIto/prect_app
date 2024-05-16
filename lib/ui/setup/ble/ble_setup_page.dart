import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/components/primary_button.dart';
import 'package:prect/ui/setup/ble/connect.dart';
import 'package:prect/ui/setup/ble/write_setting_data.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

class BleSetupPage extends HookConsumerWidget {
  const BleSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(bleSetupPageProvider);

    final viewIndex = useState(0);

    useEffect(() {
      uiState.bleUseCase.bleInit();
      uiState.registerDeviceUseCase.createNewDevice();
      return () {
        if (uiState.spiffsData.deviceId.isNotEmpty) {
          final newDeviceId = uiState.spiffsData.deviceId;
          print('clearNewDevice: $newDeviceId');
          uiState.registerDeviceUseCase.clearNewDevice(newDeviceId);
        }
      };
    }, const []);

    List<Widget> views = [
      const Connect(),
      WriteSettingData(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('BLEセットアップ'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
        child: Column(
          children: [
            views[viewIndex.value],
            const Spacer(),
            PrimaryButton(
              onPressed: () {
                if (viewIndex.value < views.length - 1) {
                  viewIndex.value = viewIndex.value + 1;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
