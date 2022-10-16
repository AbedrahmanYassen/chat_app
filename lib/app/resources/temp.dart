import 'package:flutter/material.dart';

class TempData {
  static double _getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double _getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getResponsiveWidth(double width, BuildContext context) {
    return (width / 428) * _getScreenWidth(context);
  }

  static double getResponsiveHeight(double height, BuildContext context) {
    return (height / 926) * _getScreenHeight(context);
  }
}
