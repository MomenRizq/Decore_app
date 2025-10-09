import 'package:decore_app/Feature/cart/presentation/views/widget/Empty_cart_view.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/full_cart_view.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/cart_cubit.dart';
import '../../cubit/cart_state.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'My Cart'),
        Expanded(
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              if (state is CartLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CartLoaded) {
                if (state.items.isEmpty) {
                  return const EmptyCartView();
                } else {
                  return FullCartView(cartItems: state.items);
                }
              } else if (state is CartEmpty) {
                return const EmptyCartView();
              } else if (state is CartError) {
                return Center(child: Text('Error: ${state.message}'));
              } else {
                return const EmptyCartView();
              }
            },
          ),
        ),
      ],
    );
  }
}
