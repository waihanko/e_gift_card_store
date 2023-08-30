import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimary = Color(0xFFFFFFFF);
  static const Color kSecondary = Color(0xFFF4F5FB);
  static const Color kTextColor = Color(0xFF7C7C7C);
  static const Color kGrey = Color(0xFFB7B7B7);
  static const Color kRed = Color(0xFFFF4500);
  static const Color kLightRed = Color(0xFFFBE8E1);
  static const Color kDark = Color(0xFF1B1B1B);
  static const Color kGreen = Color(0xFF377D22);
  static const Color kYellow = Color(0xFFFB8C00);
  static const Color kWhite = Color(0xFFFFFFFF);
}

class BackgroundColors{
  static const Color kWhite = Color(0xFFF7F7F7);
  static const Color kBlue = Color(0xFFF4F5FB);
}

class TransparentColors{
  static const Color kBlue = Color(0x3434C3EE);
  static const Color kRed = Color(0x33E34B31);
  static const Color kPurple = Color(0x33963EE5);
  static const Color kGreen = Color(0x3343F643);
  static const Color kYellow = Color(0x33E3893B);
}

class Gradients {
  static final bottomBarBg = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.transparent,
        Colors.white.withOpacity(0.2),
        Colors.white.withOpacity(0.8)
      ]);
}
