import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_cubit.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/Feature/item_details/presentation/views/widget/details_of_item.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsOfItemViewBody extends StatelessWidget {
  const DetailsOfItemViewBody({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: product.title,
                isBackButtonVisible: true,
              ),
              const SizedBox(height: 20),
              DetailsOfItem(product: product),
              const SizedBox(height: 30),
              CustomButton(
                  text: 'Add to cart',
                  onPressed: () {
                    context.read<CartCubit>().addProductToCart(product);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Product added to cart'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
