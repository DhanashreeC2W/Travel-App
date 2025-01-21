import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A GLOBAL CLASS FOR SCREEN HEIGHT AND WIDTH USING GETx.

class SizeController extends GetxController {
  double screenHeight(BuildContext context) {
    return Get.height;
  }

  double screenWidth(BuildContext context) {
    return Get.width;
  }
}
