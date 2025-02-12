import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/Controller/onboarding_controller.dart';
import 'package:travel_app/Controller/size_controller.dart';
import 'package:travel_app/view/Sign%20in/up%20Screens/sign_in_screen.dart';

/// ONBOARDING WIDGET FOR INDIVIDUAL PAGES
class OnboardingWidget extends StatelessWidget {
  final String onboardingheadLine;
  final String onboardingimageUrl;
  final String onboardingDescription;
  final String richText;
  final PageController controller;

  /// CONSTRUCTOR FOR PASSING DATA TO WIDGET
  const OnboardingWidget({
    super.key,
    required this.onboardingheadLine,
    required this.onboardingimageUrl,
    required this.onboardingDescription,
    required this.richText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    SizeController sizeController = Get.put(SizeController());
    OnboardingController onboardingController = Get.put(OnboardingController());

    return Column(
      children: [
        /// IMAGE AND SKIP BUTTON STACK
        Stack(
          children: [
            /// ONBOARDING IMAGE
            Image.asset(
              onboardingimageUrl,
              width: sizeController.screenWidth(context),
              fit: BoxFit.cover,
            ),

            /// SKIP BUTTON POSITIONED
            Positioned(
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  top: sizeController.screenHeight(context) * 0.047,
                  right: sizeController.screenWidth(context) * 0.041,
                ),
                child: Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(202, 234, 255, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: sizeController.screenHeight(context) * 0.020,
                  ),
                ),
              ),
            ),
          ],
        ),

        /// CONTENT CONTAINER
        Container(
          alignment: Alignment.center,
          height: sizeController.screenHeight(context) / 2.7,
          margin: EdgeInsets.all(sizeController.screenHeight(context) * 0.035),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// HEADLINE WITH RICH TEXT
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: onboardingheadLine,
                      style: GoogleFonts.aclonica(
                        color: const Color.fromRGBO(27, 30, 40, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: sizeController.screenHeight(context) * 0.029,
                      ),
                    ),
                    TextSpan(
                      text: richText,
                      style: GoogleFonts.aclonica(
                        color: const Color.fromRGBO(255, 112, 41, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: sizeController.screenHeight(context) * 0.029,
                      ),
                    ),
                  ],
                ),
              ),

              /// DESCRIPTION TEXT
              Text(
                onboardingDescription,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(125, 132, 141, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: sizeController.screenHeight(context) * 0.018,
                ),
              ),

              /// PAGE INDICATOR
              SmoothPageIndicator(
                controller: controller,
                count: onboardingController.onboardingContentsList.length,
                effect: ExpandingDotsEffect(
                  dotHeight: sizeController.screenHeight(context) * 0.0099,
                  dotWidth: sizeController.screenWidth(context) * 0.05,
                  dotColor: const Color.fromRGBO(202, 234, 255, 1),
                  activeDotColor: const Color.fromRGBO(13, 110, 253, 1),
                ),
              ),

              /// NEXT OR GET STARTED BUTTON
              Obx(() {
                return GestureDetector(
                  onTap: () {
                    /// CHECK IF THE CURRENT PAGE IS NOT THE LAST PAGE IN THE ONBOARDING SEQUENCE
                    if (onboardingController.currentPage.value <
                        onboardingController.onboardingContentsList.length -
                            1) {
                      /// IF IT'S NOT THE LAST PAGE, NAVIGATE TO THE NEXT PAGE WITH AN ANIMATION
                      controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeInOut);
                    } else {
                      // IF IT'S THE LAST PAGE, NAVIGATE TO THE HOME SCREEN
                      Get.to(() => const SignInScreen());
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: sizeController.screenWidth(context),
                    height: sizeController.screenHeight(context) * 0.058,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(13, 110, 253, 1),
                    ),
                    child: Text(
                      /// CHECK IF THE CURRENT PAGE IS NOT THE LAST PAGE IN THE ONBOARDING SEQUENCE
                      onboardingController.currentPage.value ==
                              onboardingController
                                      .onboardingContentsList.length -
                                  1

                          /// IF IT'S THE LAST PAGE, SHOW "GET STARTED"
                          ? "Get Started"

                          /// OTHERWISE, SHOW "NEXT"
                          : "Next",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: sizeController.screenHeight(context) * 0.018,
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
