import 'package:e_app/core/helper/custom_print.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    kPrint('this is the default size $defaultSize');
  }

 static void prints() {
    kPrint(screenHeight ?? "height");
    kPrint(screenWidth ?? "width");
    kPrint(orientation ?? "orien");
  }
}
