import 'package:coocies_app_ui/ui/colors.dart';
import 'package:flutter/material.dart';

class CookiesBarWidget extends StatelessWidget {
  const CookiesBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cookies',
              style: TextStyle(fontSize: 42, color: Colors.white),
            ),
            Text(
              'Premium',
              style: TextStyle(fontSize: 30, color: orange),
            )
          ],
        ),
        Text(
          'See more',
          style: TextStyle(fontSize: 16, color: orange),
        )
      ],
    );
  }
}
