import 'package:prect/ui/common_widget/page_inner_title.dart';
import 'package:flutter/material.dart';

class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topCenter,
          child: PageInnerTitle(title: '登録に成功しました！'),
        ),
        Image.asset(
          'assets/images/banyan.jpg',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 16),
        const Text('名称：ガジュマル', style: TextStyle(fontSize: 16)),
        const Text('種類：観葉植物', style: TextStyle(fontSize: 16)),
        const Text('特徴：熱帯植物', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
