import 'package:flutter/material.dart';

class ContainerArrow extends StatelessWidget {
  const ContainerArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration:
            const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 30,
          color: Colors.white,
        ));
  }
}
