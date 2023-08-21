import 'package:flutter/material.dart';
import 'package:flutter_cookies_app_ui/constants/colors.dart';
import 'package:flutter_cookies_app_ui/widgets/widgets.dart';

class HorizontalCookieCard extends StatelessWidget {
  const HorizontalCookieCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.12,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/3.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Double\nchocolate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5),
                        Premium()
                      ],
                    ),
                    SizedBox(width: 26),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '20 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '16 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                      ],
                    )
                  ],
                ),
              )
            ],
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
