import 'package:flutter/material.dart';
import 'package:jtrznadel_me/constants/colors.dart';
import 'package:jtrznadel_me/widgets/navigation_bar/nav_bar_item.dart';
import 'package:jtrznadel_me/widgets/navigation_bar/nav_bar_mobile.dart';
import 'package:jtrznadel_me/widgets/navigation_bar/nav_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const NavBarMobile(),
      tablet: (_) => const NavBarTabletDesktop(),
    );
  }
}
