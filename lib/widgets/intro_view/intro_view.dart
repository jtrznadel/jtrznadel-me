import 'package:flutter/material.dart';
import 'package:jtrznadel_me/constants/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        var titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 164.0
                : 100.0;
        var subtitleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 52.0
                : 32.0;
        var descSize =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 16.0
                : 12.0;

        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I\'M',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: titleSize,
                  height: 0.9,
                ),
                textAlign: textAlignment,
              ),
              Text(
                'JAKUB',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: titleSize,
                  height: 0.9,
                  color: AppColors.primaryColor,
                ),
                textAlign: textAlignment,
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: subtitleSize,
                  height: 0.9,
                ),
                textAlign: textAlignment,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'asdasdasda dasdas dasdasd asf  gdfg jdfkgb df gksdfgbdfhgsdfjklgfsd sdf sdfbnsdlfjsdkhjb',
                style: TextStyle(
                  fontSize: descSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
