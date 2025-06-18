import 'package:decore_app/Feature/auth/view/widget/custom_image.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class NewCollectionItem extends StatelessWidget {
  const NewCollectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.1, 
            child: Image.asset(
              Assets.imgOnboardin1,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Kitchen Cart',
            style: TextStyles.poppinsSemiBold
                .copyWith(color: Colors.black54, fontSize: 15),
          ),
          Expanded(
            child: Text(
              'Best for your kitchen and dining room space to make a statement in your home.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              softWrap: true,
              style: TextStyles.spartanLight.copyWith(
                color: Colors.black54,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Container(
            width: double.maxFinite,
            height: 1,
            color: AppTheme.primaryColor,
          ),
          SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${120.00}",
                style: TextStyles.poppinsSemiBold.copyWith(
                  color: AppTheme.primaryColor,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: Assets.imgFavorites,
                        height: 14,
                        width: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: Assets.imgAdd,
                        height: 14,
                        width: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
