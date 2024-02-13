import 'package:flutter/material.dart';

class PageInnerTitle extends StatelessWidget {
  final String title;
  final Widget? message;

  const PageInnerTitle({super.key, required this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: message!,
            ),
        ],
      ),
    );
  }
}
