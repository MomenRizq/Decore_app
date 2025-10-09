import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/presentation/views/details_of_item_view.dart';
import 'package:decore_app/Feature/wishlist/domain/entities/wish_item.dart';
import 'package:decore_app/Feature/wishlist/presentation/cubit/wishlist_cubit.dart';
import 'package:decore_app/Feature/wishlist/presentation/view/widget/cart_item_tile.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FullWishlistView extends StatelessWidget {
  const FullWishlistView({super.key, required this.items});
  final List<ProductEntity> items;

  @override
  Widget build(BuildContext context) {
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
                  imagePath: items[index].image,
                  title: items[index].title,
                  price: items[index].price,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailsOfItemview.routeName,
                      arguments: items[index],
                    );
                  },
                  onDelete: () {
                    context.read<WishlistCubit>().toggleWishlist(items[index]);
                  },
                ),
              );
            },
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8),
        //   child: CustomButton(
        //     text: 'Add More',
        //     onPressed: () {},
        //   ),
        // ),
      ],
    );
  }
}
