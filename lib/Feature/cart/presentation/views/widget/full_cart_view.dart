import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_cubit.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_state.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/checkout_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/custom_price_widget.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/dashed_divider_widget.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_item_widget.dart';

class FullCartView extends StatelessWidget {
  const FullCartView({super.key, required this.cartItems});
  final List<CartItem> cartItems;

  double _calculateSubtotal(List<CartItem> items) {
    return items.fold(0, (total, item) => total + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final cubit = context.read<CartCubit>();
        final subtotal = _calculateSubtotal(cartItems);
        const taxAndFees = 5.0;
        const delivery = 0.0;
        final total = subtotal + taxAndFees + delivery;

        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: CartItemWidget(
                      imagepath: item.image,
                      title: item.title,
                      price: item.price,
                      quantity: item.quantity,
                      increase: () => cubit.increaseQuantity(item.id),
                      decrease: () => cubit.decreaseQuantity(item.id),
                      remove: () => cubit.removeItem(item.id),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: AppTheme.primaryColor, thickness: 1),
            const SizedBox(height: 10),
            CustomPriceWidget(title: 'SubTotal', price: subtotal),
            const CustomPriceWidget(title: 'Tax and Fees', price: taxAndFees),
            const CustomPriceWidget(title: 'Delivery', price: delivery),
            const SizedBox(height: 10),
            DashedDivider(height: 1, color: AppTheme.primaryColor),
            const SizedBox(height: 10),
            CustomPriceWidget(
              title: 'Total',
              price: total,
              titleFontSize: 25,
              priceFontSize: 20,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Checkout',
              onPressed: () {
                Navigator.pushNamed(context, CheckoutView.routeName,
                    arguments: cartItems);
              },
            ),
          ],
        );
      },
    );
  }
}
