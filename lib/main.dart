import 'package:flutter/material.dart';
import 'package:travel_app/View/OnBoarding%20Screens/Widget/Screen/onboarding_screen.dart';
import 'package:travel_app/View/Sign%20in/up%20Screens/sign_in_screen.dart';
import 'package:travel_app/View/Splash%20Screen/splash_screen.dart';
import 'package:get/get.dart';

import 'View/Home Screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        "home": (context) {
          return const HomeScreen();
        },
        "Onboarding": (context) => const OnboardingScreen()
      },
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
