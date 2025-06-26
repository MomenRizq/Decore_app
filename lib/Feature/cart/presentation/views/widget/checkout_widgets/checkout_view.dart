import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/checkout_view_body.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});
  static const String routeName = '/checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckoutViewBody(),
    );
  }
}