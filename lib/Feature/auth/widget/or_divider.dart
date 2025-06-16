import 'package:flutter/material.dart';
import '../../../core/utils/app_text_style.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0x0ff00000),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'or sign up with',
          textAlign: TextAlign.center,
          style: TextStyles.spartanRegular,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Divider(
            color: Color(0x0ff00000),
          ),
        ),
      ],
    );
  }
}