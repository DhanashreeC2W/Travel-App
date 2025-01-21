import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/Controller/onboarding_controller.dart';
import 'package:travel_app/View/OnBoarding%20Screens/Widget/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  /// INSTANCE OF ONBOARDINGCONTROLLER TO MANAGE STATE
  OnboardingController onboardingController = Get.put(OnboardingController());

  /// PAGECONTROLLER TO MANAGE PAGE TRANSITIONS IN THE PAGEVIEW
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,

        itemCount: onboardingController.onboardingContentsList.length,

        /// UPDATE THE CURRENT PAGE IN THE CONTROLLER WHEN THE PAGE CHANGES
        onPageChanged: (value) {
          onboardingController.currentPage.value = value;
          log("${onboardingController.currentPage.value}"); // Log the current page index
        },

        itemBuilder: (context, index) {
          final content = onboardingController.onboardingContentsList[index];

          /// RETURN THE ONBOARDINGWIDGET FOR EACH PAGE
          return OnboardingWidget(
              onboardingheadLine: content["onboardingheadLine"],
              onboardingimageUrl: content["onboardingimageUrl"],
              onboardingDescription: content["onboardingDescription"],
              richText: content["richText"],
              controller: _pageController);
        },
      ),
    );
  }
}
