import 'package:flutter/material.dart';
import 'package:jtrznadel_me/constants/colors.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          RichText(
            text: const TextSpan(
              text: "j",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.primaryColor,
              ),
              children: [
                TextSpan(
                  text: "T",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.neutralTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
