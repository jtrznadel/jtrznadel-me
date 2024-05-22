import 'package:flutter/material.dart';
import 'package:jtrznadel_me/widgets/intro_view/intro_view.dart';
import 'package:lottie/lottie.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const IntroView(),
        Lottie.asset('assets/lotties/home_astronaut.json',
            height: size.width * 0.5),
      ],
    );
  }
}
