import 'package:decore_app/Feature/wishlist/presentation/view/widget/cart_item_tile.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FullWishlistView extends StatelessWidget {
  const FullWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CartItemTile(
                  imagePath: Assets.imgOnboardin1,
                  title: "Title",
                  price: 150,
                  onDelete: () {
                    // حذف العنصر من الليست
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: CustomButton(
            text: 'Add More',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
