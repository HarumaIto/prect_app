import 'package:prect/ui/components/number_list.dart';
import 'package:prect/ui/components/page_inner_title.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '植木鉢を登録しよう！'),
        NumberList(
          context: context,
          texts: const [
            'デバイスの電源をONにしてください',
            'デバイスのボタンを押して設定モードに変更してください',
          ],
        ),
      ],
    );
  }
}
