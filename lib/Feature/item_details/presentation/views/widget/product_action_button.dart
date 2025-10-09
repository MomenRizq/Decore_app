import 'package:decore_app/Feature/cart/presentation/cubit/cart_cubit.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/wishlist/presentation/cubit/wishlist_cubit.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductActionButton extends StatefulWidget {
  const ProductActionButton({super.key, required this.product});
  final ProductEntity product;

  @override
  State<ProductActionButton> createState() => _ProductActionButtonState();
}

class _ProductActionButtonState extends State<ProductActionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$${widget.product.price}",
            style: TextStyles.poppinsSemiBold.copyWith(
              color: AppTheme.primaryColor,
              fontSize: 25,
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
                  child: IconButton(
                    icon: Icon(
                      widget.product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                    color:
                        widget.product.isFavorite ? Colors.red : Colors.white,
                    iconSize: 24,
                    onPressed: () {
                      setState(() {
                        context
                            .read<WishlistCubit>()
                            .toggleWishlist(widget.product);
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            widget.product.isFavorite
                                ? 'Product added to wishlist'
                                : 'Product removed from wishlist',
                          ),
                          backgroundColor: widget.product.isFavorite
                              ? Colors.green
                              : Colors.red,
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 5),

                // 🛒 Add to Cart Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: IconButton(
                    icon: Icon(
                      context.watch<CartCubit>().isInCart(widget.product.id)
                          ? Icons.check_circle_outline
                          : Icons.add_shopping_cart_outlined,
                      color:
                          context.watch<CartCubit>().isInCart(widget.product.id)
                              ? Colors.green
                              : Colors.white,
                    ),
                    onPressed: () {
                      context.read<CartCubit>().toggleCart(widget.product);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context
                                    .read<CartCubit>()
                                    .isInCart(widget.product.id)
                                ? 'Added to cart'
                                : 'Removed from cart',
                          ),
                          backgroundColor: context
                                  .read<CartCubit>()
                                  .isInCart(widget.product.id)
                              ? Colors.green
                              : Colors.red,
                        ),
                      );
                    },
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
