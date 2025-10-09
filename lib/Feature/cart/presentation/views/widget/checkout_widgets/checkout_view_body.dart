import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/delivary_time.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/order_summary.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/payment_method_selector.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/section_title.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/shipping_address_cart.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/state_order_view.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key, required this.items});
  final List<CartItem> items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: leftPadding,
            right: rightPadding,
            top: topPadding,
            bottom: bottomPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppBar(
              title: "Checkout",
              isBackButtonVisible: true,
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Shipping Address'),
            ShippingAddressCard(
              name: 'Kathryn Murphy',
              address:
                  '2464 Royal Ln. Mesa, New Jersey 45463  , (302) 555-0107 - (406) 555-0120',
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Order Summary'),
            SizedBox(height: 5),
            OrderSummary(items: items),
            SizedBox(height: 20),
            SectionTitle(title: 'Payment Method'),
            PaymentMethodSelector(),
            SizedBox(height: 20),
            SectionTitle(title: 'Delivery Time'),
            SizedBox(height: 5),
            DeliveryTime(),
            SizedBox(height: 30),
            Center(
                child: CustomButton(
                    text: "Pay Now",
                    onPressed: () {
                      Navigator.pushNamed(context, StateOrderView.routeName);
                    }))
          ],
        ),
      ),
    );
  }
}
