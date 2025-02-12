import 'package:flutter/material.dart';
import 'package:travel_app/view/Sign%20in/up%20Screens/widgets/sign_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignWidget(pageName: "Sign in"),
    );
  }
}
