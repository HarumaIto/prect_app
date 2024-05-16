import 'package:prect/ui/components/page_inner_title.dart';
import 'package:flutter/material.dart';

class ChoseType extends StatelessWidget {
  const ChoseType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '植物の種類を選択'),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/succulent.jpg',
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text('多肉植物'),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/decorative.jpg',
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text('観葉植物'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
