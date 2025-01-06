import 'package:flutter/material.dart';

/// A GLOBAL CLASS TO ACCESS MEDIAQUERY DATA LIKE SCREEN HEIGHT AND WIDTH.
/// THIS CLASS PROVIDES METHODS TO RETRIEVE THE SCREEN'S HEIGHT AND WIDTH FROM ANY CONTEXT.
/// IDEAL FOR SITUATIONS WHERE MEDIAQUERY NEEDS TO BE ACCESSED WITHOUT PASSING CONTEXT ALL OVER THE APP.

/// GETS THE SCREEN HEIGHT/WIDTH USING THE PROVIDED BUILDCONTEXT.
///
/// PARAMETERS:
/// - [CONTEXT]: THE BUILDCONTEXT USED TO RETRIEVE THE MEDIA QUERY DATA.
///
/// RETURNS:
/// - THE SCREEN HEIGHT/WIDTH OF THE DEVICE.

class MediaqueryController {
  double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
