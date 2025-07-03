import 'package:decore_app/Feature/Profile/presentation/view/widget/edit_profile_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile(
      {super.key, required this.title, this.editIcon = false});
  final String title;
  final bool editIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
        ),
        Center(
          child: Text(
            title,
            style: TextStyles.poppinsSemiBold
                .copyWith(color: AppTheme.primaryColor),
          ),
        ),
        editIcon
            ? GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EditProfileView.routeName);
                },
              child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Center(
                    child: Icon(Icons.edit, color: Colors.white, size: 18),
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
