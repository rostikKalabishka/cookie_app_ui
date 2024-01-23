import 'package:coocies_app_ui/ui/colors.dart';
import 'package:flutter/material.dart';

class NavBarButtonWidget extends StatelessWidget {
  const NavBarButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });
  final String icon;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(10),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: buttonColor),
          child: Image.asset(
            icon,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: isSelected ? orange : Colors.grey),
        )
      ],
    );
  }
}
