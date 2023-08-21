import 'package:flutter/material.dart';
import 'package:flutter_cookies_app_ui/constants/colors.dart';
import 'package:flutter_cookies_app_ui/models/cookies.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Body(size: size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Avatar(),
              SizedBox(width: 10),
              PersonalInfo(),
              Spacer(),
              Cart()
            ],
          ),
          const CookiesBar(
            title: 'Cookies',
            subTitle: 'Premium',
            seemore: 'See more',
          ),
          SizedBox(
            height: size.height * 0.13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cookies.map((e) => CookieCard(cookie: e)).toList(),
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cookies',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Text(
                'See more',
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const HorizontalCookieCard(),
        ],
      ),
    );
  }
}
