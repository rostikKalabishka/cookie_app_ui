import 'package:coocies_app_ui/model/cookies.dart';
import 'package:coocies_app_ui/ui/colors.dart';
import 'package:coocies_app_ui/widgets/avatar_widget.dart';
import 'package:coocies_app_ui/widgets/bottom_nav_bar_widget.dart';
import 'package:coocies_app_ui/widgets/cart_widget.dart';
import 'package:coocies_app_ui/widgets/cookies_bar_widget.dart';
import 'package:coocies_app_ui/widgets/cookies_card_widget.dart';
import 'package:coocies_app_ui/widgets/horizontal_cookie_card_widget.dart';
import 'package:coocies_app_ui/widgets/offers_bar.dart';
import 'package:coocies_app_ui/widgets/personal_info_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.13;

    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarWidget(),
                  SizedBox(
                    width: 16,
                  ),
                  PersonalInfoWidget(),
                  Spacer(),
                  CartWidget()
                ],
              ),
              const CookiesBarWidget(),
              SizedBox(
                height: cookieSize,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies
                    .map((e) => CookiesCard(
                          cookie: e,
                        ))
                    .toList(),
              ),
              const OffersBarWidget(),
              const SizedBox(
                height: 10,
              ),
              const HorizontalCookieCard()
            ],
          ),
        ),
      ),
    );
  }
}
