import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarCategories extends StatelessWidget {
  const CustomAppBarCategories(
      {super.key, required this.title, this.isBackButtonVisible = false});
  final String title;
  final bool isBackButtonVisible;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isBackButtonVisible
            ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              )
            : Center(
                child: Container(
                color: Colors.white,
              )),
        Center(
          child: Text(
            title,
            style: TextStyles.poppinsSemiBold
                .copyWith(color: AppTheme.primaryColor),
          ),
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Center(
            child: SvgPicture.asset(
              Assets.imgSearchIcon,
              width: 18,
              height: 18,
            ),
          ),
        ),
      ],
    );
    ;
  }
}
