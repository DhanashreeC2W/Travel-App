import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/size_controller.dart';

class ProfileWithNameWidget {
  Widget profileWidget(BuildContext context, SizeController _sizeController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: _sizeController.screenHeight(context) * 0.046,
          width: _sizeController.screenWidth(context) * 0.35,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255,255,255,1),
            borderRadius: BorderRadius.circular(22)),
          child: Row(
            children: [
              const CircleAvatar(
                foregroundColor: Colors.amber,
                backgroundImage: AssetImage("assets/images/avtar.png"),
              ),
              Text(
                "Dhanashree",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                  fontSize: _sizeController.screenHeight(context) * 0.016,
                ),
              ),
            
            ],
          ),
        ),
          Image.asset(
            "assets/icons/bell_icon.png",
            height: _sizeController.screenHeight(context)*0.046,

            )
      ],
    );
  }
}
