import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:prect/ui/setup/state/device_setup_page_state.dart';

class StepNextButton extends ConsumerWidget {
  final int currentIndex;
  final Function? onNext;

  StepNextButton({
    required this.currentIndex,
    this.onNext,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              currentIndex == 3 ? '完了' : '次へ',
              style: TextStyle(color: Colors.black),
            ),
          ),
          currentIndex == 3
              ? Container()
              : Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Colors.black,
                ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: () {
        onNext?.call();
        if (currentIndex == 3) {
          ref.read(deviceSetupPageProvider.notifier).index = 0;
          Navigator.maybePop(context);
        } else {
          ref.read(deviceSetupPageProvider.notifier).index = currentIndex + 1;
        }
      },
    );
  }
}
