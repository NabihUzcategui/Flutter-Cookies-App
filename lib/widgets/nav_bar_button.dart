import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NavBarButton extends StatelessWidget {
  final String icon;
  final String text;
  final bool isSelected;

  const NavBarButton({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: buttonColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: isSelected ? orange : Colors.grey),
        )
      ],
    );
  }
}
