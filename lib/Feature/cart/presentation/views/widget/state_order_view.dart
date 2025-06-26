import 'package:decore_app/Feature/cart/presentation/views/widget/state_order_view_body.dart';
import 'package:flutter/material.dart';

class StateOrderView extends StatelessWidget {
  const StateOrderView({super.key});
  static const String routeName = '/stateOrder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StateOrderViewBody(),
    );
  }
}