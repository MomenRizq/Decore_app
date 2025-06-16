import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle( 
        color: AppTheme.primaryColor,
        fontSize: 28,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 0.79,
      ),
    );
  }
}
