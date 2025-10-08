import 'package:decore_app/Feature/auth/presentaion/view/widget/custom_image.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/action_button.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/presentation/views/details_of_item_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class NewCollectionItem extends StatelessWidget {
  const NewCollectionItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            DetailsOfItemview.routeName,
            arguments: product,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppTheme.secondaryColor,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    cacheWidth: 400,
                    cacheHeight: 440,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.broken_image, size: 40),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 4),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  product.title,
                  style: TextStyles.poppinsSemiBold.copyWith(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.spartanLight.copyWith(
                      color: Colors.black54,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 3),

              // Divider
              Container(
                width: double.maxFinite,
                height: 1,
                color: AppTheme.primaryColor,
              ),

              const SizedBox(height: 5),

              // Price and Actions
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyles.poppinsSemiBold.copyWith(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ActionButton(imagePath: Assets.imgFavorites),
                        const SizedBox(width: 5),
                        ActionButton(imagePath: Assets.imgAdd),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
