import 'package:prect/ui/common_widget/number_list.dart';
import 'package:prect/ui/common_widget/page_inner_title.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '育てる環境を登録しよう！'),
        NumberList(
          context: context,
          texts: const [
            '位置情報を使って、植木鉢を置いている地域の温度や湿度を計測します',
            '位置情報の設定をONにしてください',
          ],
        ),
      ],
    );
  }
}
