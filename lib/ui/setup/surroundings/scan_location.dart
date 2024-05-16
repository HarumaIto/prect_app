import 'package:prect/ui/components/page_inner_title.dart';
import 'package:flutter/material.dart';

class ScanLocation extends StatelessWidget {
  const ScanLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '位置情報を取得する'),
        const SizedBox(height: 20),
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xffEF5B0C)),
            padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
            elevation: MaterialStateProperty.all(8),
          ),
          onPressed: () {
            // ここに位置情報を取得して保存する処理を書く
          },
          icon: const Icon(
            Icons.location_on_outlined,
            size: 76,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
