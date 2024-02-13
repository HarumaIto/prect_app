import 'package:prect/ui/common_widget/page_inner_title.dart';
import 'package:flutter/material.dart';

class Complete extends StatelessWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topCenter,
          child: PageInnerTitle(title: '登録に成功しました！'),
        ),
        Image.asset('assets/images/map.jpg'),
        const SizedBox(height: 16),
        const Text('緯度：35.681236'),
        const Text('経度：139.767125'),
        const Text('市区町村：東京都千代田区'),
      ],
    );
  }
}
