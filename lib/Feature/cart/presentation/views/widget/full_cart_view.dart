import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/checkout_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/custom_price_widget.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/dashed_divider_widget.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_theme.dart';
import 'cart_item_widget.dart';

class FullCartView extends StatelessWidget {
  const FullCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 10, // Replace with actual cart item count
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CartItemWidget(
                  imagepath:
                      Assets.imgOnboardin1, // أو 'assets/images/product.png'
                  title: 'Bedroom Dresser',
                  price: 85,
                  quantity: 2,
                  onAdd: () {},
                  onRemove: () {},
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: AppTheme.primaryColor,
          thickness: 1,
        ),
        SizedBox(height: 10),
        CustomPriceWidget(
          title: 'SubTotal',
          price: 980.00,
        ),
        CustomPriceWidget(
          title: 'Tax and Fees',
          price: 5.00,
        ),
        CustomPriceWidget(
          title: 'Delivery',
          price: 00.0,
        ),
        SizedBox(height: 10),
        DashedDivider(height: 1, color: AppTheme.primaryColor),
        SizedBox(height: 10),
        CustomPriceWidget(
          title: 'Total',
          price: 985.00,
          titleFontSize: 25,
          priceFontSize: 20,
        ),
        SizedBox(height: 20),
        CustomButton(
            text: 'Checkout',
            onPressed: () {
              Navigator.pushNamed(context, CheckoutView.routeName);
            }),
      ],
    );
  }
}
