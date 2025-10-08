import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_image.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: CustomImageView(
          imagePath: imagePath,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}
