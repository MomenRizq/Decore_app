import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_image.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/Feature/item_details/presentation/views/widget/product_action_button.dart';
import 'package:flutter/material.dart';

import 'custom_users_review_header.dart';

class DetailsOfItem extends StatelessWidget {
  const DetailsOfItem({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          product.title,
          style: TextStyles.poppinsSemiBold
              .copyWith(color: Colors.black, fontSize: 25),
        ),
        const SizedBox(height: 10),
        Text(
          product.description,
          textAlign: TextAlign.start,
          softWrap: true,
          style: TextStyles.spartanLight.copyWith(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 10),
        Divider(
          color: AppTheme.primaryColor,
          thickness: 2,
        ),
        const SizedBox(height: 5),
        ProductActionButton(
          product: product,
        ),
        CustomUserReviewsHeader(
          filledStars: product.rating,
        ),
      ],
    );
  }
}
