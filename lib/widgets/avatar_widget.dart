import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25,
      child: CircleAvatar(
        radius: 23,
        backgroundImage: AssetImage('assets/user.png'),
      ),
    );
  }
}
