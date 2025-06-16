  import 'package:flutter/material.dart';

abstract class TextStyles {
  // Titles & Subtitles - Poppins
  static const TextStyle poppinsBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle poppinsSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 20
  );

  static const TextStyle poppinsMedium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle poppinsRegular = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
  );

  static const TextStyle poppinsLight = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
  );

  static const TextStyle poppinsThin = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w100,
  );

  // Body Text - League Spartan
  static const TextStyle spartanBold = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle spartanSemiBold = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle spartanMedium = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle spartanRegular = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.normal,
    fontSize: 14
  );

  static const TextStyle spartanLight = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.w300,
  );

  static const TextStyle spartanThin = TextStyle(
    fontFamily: 'League Spartan',
    fontWeight: FontWeight.w100,
  );
}
