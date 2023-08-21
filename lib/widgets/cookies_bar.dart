import 'package:flutter/material.dart';

class CookiesBar extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String seemore;

  const CookiesBar(
      {super.key, this.title, this.subTitle, required this.seemore});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? " ",
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              subTitle ?? " ",
              style: const TextStyle(color: Colors.orange, fontSize: 28),
            ),
          ],
        ),
        Text(
          seemore,
          style: const TextStyle(color: Colors.orange, fontSize: 16),
        ),
      ],
    );
  }
}
