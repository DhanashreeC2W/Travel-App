import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_app/controller/size_controller.dart';
import 'package:travel_app/view/Home%20Screen/Widgets/profile_with_name_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     SizeController _sizeController = SizeController();
    log("${_sizeController.screenWidth(context) * 0.316}");

    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            ProfileWithNameWidget().profileWidget(context, _sizeController),
          ],
        ),
      ),
    );
  }
}
