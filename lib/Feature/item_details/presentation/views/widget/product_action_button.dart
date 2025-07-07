import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_image.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ProductActionButton extends StatefulWidget {
  const ProductActionButton({super.key});

  @override
  State<ProductActionButton> createState() => _ProductActionButtonState();
}

class _ProductActionButtonState extends State<ProductActionButton> {
  @override
  Widget build(BuildContext context) {
    return         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${120.00}",
                style: TextStyles.poppinsSemiBold.copyWith(
                  color: AppTheme.primaryColor,fontSize: 25
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: Assets.imgFavorites,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: Assets.imgAdd,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}