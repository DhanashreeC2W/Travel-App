import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Controller/size_controller.dart';

class SignWidget extends StatelessWidget {
  final String pageName;
  const SignWidget({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    SizeController _sizeController = Get.put(SizeController());
    return Padding(
      padding: EdgeInsets.only(
        // top: _sizeController.screenHeight(context) * 0.014,
        // left: _sizeController.screenHeight(context) * 0.98,
      ),
      child: Column(
        children: [
          Text(
            "$pageName now",
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(27, 30, 40, 1),
              fontWeight: FontWeight.w600,
              fontSize: _sizeController.screenHeight(context) * 0.028,
            ),
          ),
          Text(
            pageName == "Sign in"
                ? "Please sign in to continue our app"
                : "Please fill the details and create account",
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(125, 132, 141, 1),
              fontWeight: FontWeight.w400,
              fontSize: _sizeController.screenHeight(context) * 0.018,
            ),
          ),
        ],
      ),
    );
  }
}
