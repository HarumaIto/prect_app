import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/setup/state/ble_setup_page_state.dart';

class Connect extends HookConsumerWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(bleSetupPageProvider);

    useEffect(() {
      uiState.bleUseCase.bleScan();
      return null;
    }, const []);

    return Column(
      children: [
        const Text('状態'),
        const SizedBox(height: 20),
        if (uiState.remoteId.isEmpty) const Text('未接続') else const Text('接続済み'),
        const SizedBox(height: 20),
        if (uiState.remoteId.isEmpty) const CircularProgressIndicator(),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed:
              uiState.remoteId.isEmpty ? uiState.bleUseCase.bleScan : null,
          child: const Text('接続する'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
