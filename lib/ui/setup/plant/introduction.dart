import 'package:prect/ui/common_widget/number_list.dart';
import 'package:prect/ui/common_widget/page_inner_title.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '植える植物を登録しよう！'),
        NumberList(
          context: context,
          texts: const [
            'この植木鉢に植える植物を登録します',
            'これを登録することによって、植物にあった水やりのタイミングを提案することが可能になります',
          ],
        ),
      ],
    );
  }
}
