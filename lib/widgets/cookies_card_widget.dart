// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coocies_app_ui/ui/colors.dart';
import 'package:coocies_app_ui/widgets/container_arrow.dart';
import 'package:coocies_app_ui/widgets/premium_widget.dart';
import 'package:flutter/material.dart';

import 'package:coocies_app_ui/model/cookies.dart';

class CookiesCard extends StatelessWidget {
  const CookiesCard({
    Key? key,
    required this.cookie,
  }) : super(key: key);
  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.15;
    var cardSize = size.height * 0.19;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 32, right: 32, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const PremiumWidget(),
                Text(
                  cookie.price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(right: 0, bottom: 0, child: ContainerArrow())
      ],
    );
  }
}
