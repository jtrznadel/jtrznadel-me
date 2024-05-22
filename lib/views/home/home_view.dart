import 'package:flutter/material.dart';
import 'package:jtrznadel_me/views/home/home_content_desktop.dart';
import 'package:jtrznadel_me/views/home/home_content_mobile.dart';
import 'package:jtrznadel_me/widgets/centered_view/centered_view.dart';
import 'package:jtrznadel_me/widgets/nav_drawer/nav_drawer.dart';
import 'package:jtrznadel_me/widgets/navigation_bar/nav_bar.dart';
import 'package:jtrznadel_me/widgets/intro_view/intro_view.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                child: ScreenTypeLayout.builder(
                  mobile: (_) => const HomeContentMobile(),
                  tablet: (_) => const HomeContentMobile(),
                  desktop: (_) => const HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
