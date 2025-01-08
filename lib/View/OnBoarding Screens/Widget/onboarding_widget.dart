import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/Controller/mediaquery_controller.dart';
import 'package:travel_app/Controller/onboarding_controller.dart';

class OnboardingWidget extends StatelessWidget {
  final String onboardingheadLine;
  final String onboardingimageUrl;
  final String onboardingDescription;
  final PageController controller;
  const OnboardingWidget({
    super.key,
    required this.onboardingheadLine,
    required this.onboardingimageUrl,
    required this.onboardingDescription,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(onboardingimageUrl),
        Text(onboardingheadLine),
        Text(onboardingDescription),
        SmoothPageIndicator(
            controller: controller,
        effect:ExpandingDotsEffect() ,
            count: OnboardingController().onboardingContentsList.length),
        Container(
          alignment: Alignment.center,
          width: MediaqueryController().screenWidth(context),
          height: MediaqueryController().screenHeight(context) * 0.058,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(13, 110, 253, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text("Get Started"),
        ),
      ],
    );
  }
}
