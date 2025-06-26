import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double fontSize;
  final Color color;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 207,
    this.height = 45,
    this.fontSize = 20,
    this.color = const Color(0xFFF4B5A4),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                fontSize: fontSize,
                color: Colors.brown, // اللون اللي شبه الصورة
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
