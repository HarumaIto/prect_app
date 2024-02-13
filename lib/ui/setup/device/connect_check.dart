import 'package:prect/ui/common_widget/page_inner_title.dart';
import 'package:flutter/material.dart';

class ConnectCheck extends StatelessWidget {
  const ConnectCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const [
        PageInnerTitle(title: '接続を確認中'),
        SizedBox(height: 20),
        CircularProgressIndicator(),
      ],
    );
  }
}
