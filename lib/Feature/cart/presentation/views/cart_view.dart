import 'package:decore_app/Feature/cart/presentation/views/widget/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
    );
  }
}