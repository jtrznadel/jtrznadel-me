import 'package:flutter/material.dart';
import 'package:jtrznadel_me/widgets/intro_view/intro_view.dart';
import 'package:lottie/lottie.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/lotties/home_astronaut.json',
          height: 400,
        ),
        const IntroView(),
      ],
    );
  }
}
