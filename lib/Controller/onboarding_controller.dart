import 'package:get/get.dart';

/// ONBOARDING CONTROLLER FOR MANAGING STATE
class OnboardingController extends GetxController {
  /// OBSERVABLE VARIABLE TO TRACK CURRENT PAGE
  var currentPage = 0.obs;

  /// LIST OF ONBOARDING CONTENTS
  List onboardingContentsList = [
    {
      "onboardingimageUrl": "assets/images/onboarding1.png",
      "onboardingheadLine": "Life is short and the world is ",
      "onboardingDescription":
          "At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations",
      "richText": "wide"
    },
    {
      "onboardingimageUrl": "assets/images/onboarding2.png",
      "onboardingheadLine": "It’s a big world out there go ",
      "onboardingDescription":
          "To get the best of your adventure you just need to leave and go where you like. We are waiting for you.",
      "richText": "explore"
    },
    {
      "onboardingimageUrl": "assets/images/onboarding3.png",
      "onboardingheadLine": "People don’t take trips, trips take ",
      "onboardingDescription":
          "To get the best of your adventure you just need to leave and go where you like. We are waiting for you.",
      "richText": "people"
    },
  ];
}
