import 'package:flutter/material.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'James',
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Figueroa',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
