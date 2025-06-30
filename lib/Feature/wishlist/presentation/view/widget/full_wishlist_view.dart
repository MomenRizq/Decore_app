import 'package:decore_app/Feature/wishlist/presentation/view/widget/cart_item_tile.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FullWishlistView extends StatelessWidget {
  const FullWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      10, // استبدل الرقم ده بعدد العناصر الحقيقية
      (_) => {
        'title': 'Serenity Nightstand',
        'price': 150.0,
        'image': Assets.imgOnboardin1,
      },
    );

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CartItemTile(
                  imagePath: Assets.imgOnboardin1,
                  title: "Title",
                  price: 150 ,
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
