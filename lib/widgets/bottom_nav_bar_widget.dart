import 'package:coocies_app_ui/ui/colors.dart';
import 'package:coocies_app_ui/widgets/nav_bar_button_widget.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 80,
        decoration: const BoxDecoration(
          color: navBarcolor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45),
          ),
        ),
      ),
      Positioned.fill(
        top: -25,
        child: GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: NavBarButtonWidget(
                  icon: 'assets/home.png',
                  text: 'Home',
                  isSelected: index == 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: NavBarButtonWidget(
                  icon: 'assets/search.png',
                  text: 'Search',
                  isSelected: index == 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: NavBarButtonWidget(
                  icon: 'assets/premium.png',
                  text: 'Premium',
                  isSelected: index == 2,
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
