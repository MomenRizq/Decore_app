import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.isBackButtonVisible = false,
      this.isSearchButtonVisible = false});
  final String title;
  final bool isBackButtonVisible;
  final bool isSearchButtonVisible;

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
            : Container(
                color: Colors.white,
              ),
        Center(
          child: Text(
            title,
            style: TextStyles.poppinsSemiBold
                .copyWith(color: AppTheme.primaryColor),
          ),
        ),
        isSearchButtonVisible
            ? Container(
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
              )
            : Container(
                color: Colors.white,
              ),
      ],
    );
    ;
  }
}
