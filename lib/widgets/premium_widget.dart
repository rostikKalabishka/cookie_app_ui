import 'package:coocies_app_ui/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PremiumWidget extends StatelessWidget {
  const PremiumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          size: 16,
          color: orange,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'Premium',
          style: TextStyle(color: orange, fontSize: 18),
        )
      ],
    );
  }
}
