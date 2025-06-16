import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFF4B5A4);
  static const Color secondaryColor = Color(0XFFFfaf0e6);
  static const Color secondaryColorDark = Color(0xff363130); 
  static const bool isDarkMode = false; 
  // Material Blue

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
  );
}
