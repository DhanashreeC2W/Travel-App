import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/Controller/onboarding_controller.dart';
import 'package:travel_app/View/OnBoarding%20Screens/Widget/onboarding_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController =Get.put( OnboardingController());
    PageController pageController = PageController();
    return Scaffold(
      body:  PageView.builder(
        itemCount: onboardingController.onboardingContentsList.length,
          itemBuilder: (context, index) {
            return OnboardingWidget(
              onboardingheadLine: onboardingController
                  .onboardingContentsList[index]["onboardingheadLine"],
              onboardingimageUrl: onboardingController
                  .onboardingContentsList[index]["onboardingimageUrl"],
              onboardingDescription: onboardingController
                  .onboardingContentsList[index]["onboardingDescription"],
              controller: pageController,
            );
          },
        ),
      );
    
  }
}
