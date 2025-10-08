import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_image.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/Feature/item_details/presentation/views/details_of_item_view.dart';
import 'package:flutter/material.dart';

class CategoriesDetailesItem extends StatelessWidget {
  const CategoriesDetailesItem({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailsOfItemview.routeName,
            arguments: product);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.secondaryColor,
        ),
        child: Column(
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
            const SizedBox(height: 4),
            Text(
              product.title,
              style: TextStyles.poppinsSemiBold
                  .copyWith(color: Colors.black54, fontSize: 15),
            ),
            Expanded(
              child: Text(
                product.description,
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
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product.price}",
                    style: TextStyles.poppinsSemiBold.copyWith(
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Center(
                            child: CustomImageView(
                              imagePath: Assets.imgFavorites,
                              height: 15,
                              width: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Center(
                            child: CustomImageView(
                              imagePath: Assets.imgAdd,
                              height: 15,
                              width: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
