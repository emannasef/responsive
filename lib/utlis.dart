import 'package:flutter/material.dart';

class Utlis{
    static double getResponsiveFont(BuildContext context, double fontSize) {
    double scale = Utlis.getFontScale(context);
    double responsiveFontSize = scale * fontSize;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getFontScale(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}