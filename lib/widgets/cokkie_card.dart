import 'package:flutter/material.dart';
import 'package:flutter_cookies_app_ui/constants/colors.dart';
import 'package:flutter_cookies_app_ui/models/cookies.dart';

import 'widgets.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({super.key, required this.cookie});

  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cookieSize = size.height * 0.16;
    final cardSize = size.height * 0.20;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: cardSize,
          height: cardSize,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 32, top: 32, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Premium(),
                Text(
                  cookie.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        ),
      ],
    );
  }
}
