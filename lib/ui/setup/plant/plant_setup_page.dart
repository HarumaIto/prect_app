import 'package:prect/ui/components/primary_button.dart';
import 'package:prect/ui/setup/plant/chose_plant.dart';
import 'package:prect/ui/setup/plant/chose_type.dart';
import 'package:prect/ui/setup/plant/complete.dart';
import 'package:prect/ui/setup/plant/introduction.dart';
import 'package:prect/ui/setup/setup_page.dart';
import 'package:prect/ui/setup/state/plant_setup_page_state.dart';
import 'package:prect/ui/setup/state/setup_page_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlantSetupPage extends HookConsumerWidget {
  const PlantSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(plantSetupPageProvider);
    final pageNotifier = ref.read(plantSetupPageProvider.notifier);

    List<Widget> views = [
      const Introduction(),
      const ChoseType(),
      const ChosePlant(),
      const Complete(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
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
          children: [
            views[uiState.index],
            const Spacer(),
            PrimaryButton(
              onPressed: () {
                if (uiState.index < views.length - 1) {
                  pageNotifier.index = uiState.index + 1;
                } else {
                  ref.read(setupPageProvider.notifier).activeStep = 2;
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
