import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Text(
            title,
            style: TextStyles.poppinsSemiBold,
          ),
          const SizedBox(height: 5),
          Text(
            subTitle,
            style: TextStyles.spartanRegular,
            textAlign: TextAlign.start,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
