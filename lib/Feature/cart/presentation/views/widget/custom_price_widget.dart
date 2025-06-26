import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomPriceWidget extends StatelessWidget {
  const CustomPriceWidget(
      {super.key, required this.price, required this.title, this.titleFontSize = 15, this.priceFontSize = 16});

  final double price;
  final String title;
  final double  titleFontSize , priceFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.poppinsMedium.copyWith(
            fontSize: titleFontSize,
          )),
          Text(
            "\$$price",
            style: TextStyles.poppinsSemiBold.copyWith(
              color: AppTheme.primaryColor,
              fontSize: priceFontSize,
            ),
          )
        ],
      ),
    );
  }
}
