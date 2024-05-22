import 'package:flutter/material.dart';
import 'package:jtrznadel_me/widgets/nav_drawer/drawer_item.dart';
import 'package:jtrznadel_me/widgets/nav_drawer/nav_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: [
          NavDrawerHeader(),
          DrawerItem(title: 'About me', icon: Icons.abc),
          DrawerItem(title: 'Projects', icon: Icons.abc),
          DrawerItem(title: 'Techstack', icon: Icons.abc),
          DrawerItem(title: 'Contact', icon: Icons.abc),
        ],
      ),
    );
  }
}
