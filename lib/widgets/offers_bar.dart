import 'package:coocies_app_ui/ui/colors.dart';
import 'package:flutter/material.dart';

class OffersBarWidget extends StatelessWidget {
  const OffersBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Offers',
          style: TextStyle(color: Colors.white, fontSize: 42),
        ),
        Text(
          'See more',
          style: TextStyle(color: orange, fontSize: 16),
        )
      ],
    );
  }
}
