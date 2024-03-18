import 'package:prect/ui/common_widget/primary_button.dart';
import 'package:prect/ui/main/main_page.dart';
import 'package:prect/ui/setup/plant/plant_setup_page.dart';
import 'package:prect/ui/setup/state/setup_page_state.dart';
import 'package:prect/ui/setup/surroundings/surroundings_setup_page.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'device/device_setup_page.dart';

class SetupPage extends HookConsumerWidget {
  const SetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(setupPageProvider);
    final stateNotifier = ref.read(setupPageProvider.notifier);

    List<Widget> steps = [
      const DeviceSetupPage(),
      const PlantSetupPage(),
      const SurroundingsSetupPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'セットアップ',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EasyStepper(
                activeStep: uiState.activeStep,
                direction: Axis.vertical,
                alignment: Alignment.topLeft,
                activeStepIconColor: const Color(0xffEF5B0C),
                showTitle: false,
                showLoadingAnimation: false,
                onStepReached: (value) {
                  stateNotifier.activeStep = value;
                },
                steps: const [
                  EasyStep(
                    icon: Icon(Icons.looks_one_outlined),
                    finishIcon: Icon(Icons.check),
                  ),
                  EasyStep(
                    icon: Icon(Icons.looks_two_outlined),
                    finishIcon: Icon(Icons.check),
                  ),
                  EasyStep(
                    icon: Icon(Icons.looks_3_outlined),
                    finishIcon: Icon(Icons.check),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 26),
                  Text('デバイス', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 72),
                  Text('植物', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 72),
                  Text('周囲', style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: PrimaryButton(
              onPressed: () {
                if (uiState.activeStep < steps.length) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => steps[uiState.activeStep],
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
