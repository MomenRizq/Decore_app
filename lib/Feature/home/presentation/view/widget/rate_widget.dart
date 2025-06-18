import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 5,
          children: [
            Center(
              child: Icon(
                Icons.star,
                color: AppTheme.primaryColor,
                size: 20,
              ),
            ),
            Text(
              '4.5',
              textAlign: TextAlign.center,
              style: TextStyles.spartanMedium.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
