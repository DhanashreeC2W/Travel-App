import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  List onboardingContentsList = [
    {
      "onboardingimageUrl": "assets/svg/images/onboarding/onboarding1.svg",
      "onboardingheadLine": "Life is short and the world is wide",
      "onboardingDescription":
          "At Friends tours and travel, we customize reliable and trut worthy educational tours to destinations",
    },
    {
      "onboardingimageUrl": "assets/svg/images/onboarding/onboarding2.svg",
      "onboardingheadLine": "It’s a big world out there go explore",
      "onboardingDescription":
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    },
    {
      "onboardingimageUrl": "assets/svg/images/onboarding/onboarding2.svg",
      "onboardingheadLine": "People don’t take trips, trips take people",
      "onboardingDescription":
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    },
  ];

  /// FUNCTION TO MOVE TO NEXT PAGE
  void nextPage() {
    if (currentPage.value < 2) {
      currentPage.value++;
    } else {
      Get.toNamed('home');
    }
  }

  /// FUNCTION TO MOVE TO PREVIOUS PAGE
  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
    }
  }
}
