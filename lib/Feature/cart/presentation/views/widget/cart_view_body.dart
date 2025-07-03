import 'package:decore_app/Feature/cart/presentation/views/widget/Empty_cart_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/checkout_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/custom_price_widget.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/dashed_divider_widget.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/full_cart_view.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCartEmpty =
        false; // This should be replaced with actual logic to check if the cart is empty
    return Column(
      children: [
        CustomAppBar(title: 'My Cart'),
        isCartEmpty ? const EmptyCartView() : Expanded(child: FullCartView()),
      ],
    );
  }
}
