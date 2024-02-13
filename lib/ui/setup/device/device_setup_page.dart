import 'package:prect/ui/common_widget/primary_button.dart';
import 'package:prect/ui/setup/device/complete.dart';
import 'package:prect/ui/setup/device/connect_check.dart';
import 'package:prect/ui/setup/device/introduction.dart';
import 'package:prect/ui/setup/device/scan_qrcode.dart';
import 'package:prect/ui/setup/setup_page.dart';
import 'package:prect/ui/setup/state/setup_page_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:prect/ui/setup/state/device_setup_page_state.dart';

class DeviceSetupPage extends ConsumerWidget {
  const DeviceSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(deviceSetupPageProvider);
    final pageNotifier = ref.read(deviceSetupPageProvider.notifier);
    // ページを離れるときに呼ぶ
    // uiState.newDeviceUseCase.clearNewDevice(uiState.newDeviceId);

    List<Widget> views = [
      const Introduction(),
      const ScanQrCode(),
      const ConnectCheck(),
      const Complete(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (uiState.index > 0) {
              pageNotifier.index = uiState.index - 1;
            } else {
              pageNotifier.index = 0;
              Navigator.maybePop(context);
            }
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                pageNotifier.index = 0;
                Navigator.maybePop(context);
              },
              icon: const Icon(Icons.close, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            views[uiState.index],
            PrimaryButton(
              onPressed: () {
                if (uiState.index < views.length - 1) {
                  pageNotifier.index = uiState.index + 1;
                } else {
                  ref.read(setupPageProvider.notifier).activeStep = 1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SetupPage(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
