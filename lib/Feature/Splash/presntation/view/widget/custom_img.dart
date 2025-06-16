import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const CustomImage({
    Key? key,
    required this.imagePath,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Image.asset(imagePath),
    );
  }
}
