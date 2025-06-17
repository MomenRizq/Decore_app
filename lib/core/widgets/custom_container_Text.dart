import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';


class CustomContainerText extends StatelessWidget {
  const CustomContainerText({
    super.key, required this.subTitle
  });

  final String subTitle ;
  final double width = 240;
  final double height = 40;


  @override
  Widget build(BuildContext context) {
    return Container(
          width: width,
          child: Text(
            subTitle,
            style: TextStyles.spartanRegular,
            textAlign: TextAlign.center,
          ),
        );
  }
}