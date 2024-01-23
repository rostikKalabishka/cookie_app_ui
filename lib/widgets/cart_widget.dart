import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 85,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              '6',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text(
              'Product',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            )
          ],
        ),
      ),
      Positioned(
        top: -20,
        left: 80 / 4,
        child: Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          height: 40,
          width: 40,
          child: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
        ),
      )
    ]);
  }
}
