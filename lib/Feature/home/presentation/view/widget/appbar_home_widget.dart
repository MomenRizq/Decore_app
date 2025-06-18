import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarHomeWidget extends StatelessWidget {
  const AppbarHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Welcome Back',
              style: TextStyles.poppinsSemiBold.copyWith(color: AppTheme.primaryColor),
            ),
            Text(
              'Create spaces that bring joy',
              style: TextStyles.spartanRegular
            ),
          ],
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Center(
            child:SvgPicture.asset(
              Assets.imgSearchIcon,
              width: 18,
              height: 18,
            ), 
          ),
        ),
      ],
    );
  }
}