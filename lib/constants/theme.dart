import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  static const Color card = const Color(0xFF8685E5);
  static const Color pageBackground = const Color(0xFF736AB7);
  static const Color title = const Color(0xFFFFFFFF);
  static const Color location = const Color(0x66FFFFFF);
  static const Color distance = const Color(0x66FFFFFF);
}

class Dimens {
  const Dimens();

  static const cardWidth = 100.0;
  static const cardHeight = 100.0;
}

class TextStyles {
  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 36.0);

  static const TextStyle planetTitle = const TextStyle(
      color: Colors.title,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);

  static const TextStyle planetLocation = const TextStyle(
      color: Colors.location,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0);

  static const TextStyle planetDistance = const TextStyle(
      color: Colors.distance,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 12.0);
}
