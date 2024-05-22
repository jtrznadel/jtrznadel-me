import 'package:flutter/material.dart';
import 'package:jtrznadel_me/constants/colors.dart';
import 'package:jtrznadel_me/widgets/navigation_bar/nav_bar_item.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              text: "j",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.primaryColor,
              ),
              children: [
                TextSpan(
                  text: "Trznadel",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.neutralTextColor,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'About me'),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'Techstack'),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'Projects'),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'Contact'),
            ],
          )
        ],
      ),
    );
  }
}
