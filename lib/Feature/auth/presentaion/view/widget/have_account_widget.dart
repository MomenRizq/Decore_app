import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key, required this.firstWord, required this.secondWord, required this.onTap,
  });

  final String firstWord ;
  final String secondWord ;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstWord,
            style: TextStyles.spartanRegular
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.spartanRegular
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              onTap();
            },
            text: secondWord,
            style:
                TextStyles.spartanRegular.copyWith(color: AppTheme.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}