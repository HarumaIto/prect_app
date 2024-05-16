import 'package:prect/ui/components/page_inner_title.dart';
import 'package:flutter/material.dart';

class ChosePlant extends StatelessWidget {
  const ChosePlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: '植物を選択'),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/pachira.jpg',
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text('パキラ'),
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
                      'assets/images/banyan.jpg',
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Text('ガジュマル'),
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
