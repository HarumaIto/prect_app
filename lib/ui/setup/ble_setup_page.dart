import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

class BleSetupPage extends HookConsumerWidget {
  const BleSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(bleSetupPageProvider);

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
            ElevatedButton(
              onPressed: uiState.bleUseCase.bleScan,
              child: const Text('接続する'),
            ),
          ],
        ),
      ),
    );
  }
}
