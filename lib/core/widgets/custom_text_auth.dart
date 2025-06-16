import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({super.key, required this.title, required this.subTitle});
  final String title , subTitle ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              title,
              style: TextStyles.poppinsSemiBold,
            ),
            SizedBox(height: 5),
            Text(
              subTitle,
              style: TextStyles.spartanRegular,
             
            ),
          ],
        ),
      ],
    );
  }
}
