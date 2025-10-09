import 'package:decore_app/Feature/cart/presentation/views/widget/cart_action_button.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartItemWidget extends StatelessWidget {
  final String imagepath;
  final String title;
  final double price;
  final int quantity;
  final VoidCallback increase;
  final VoidCallback decrease;
  final VoidCallback remove;

  const CartItemWidget({
    Key? key,
    required this.imagepath,
    required this.title,
    required this.price,
    required this.quantity,
    required this.increase,
    required this.decrease,
    required this.remove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppTheme.primaryColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagepath,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD1826A),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${price.toStringAsFixed(0)}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CartActionButton.delete(
                onTap: remove,

                // onTap: () => context.read<CartCubit>().increaseQuantity(item),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  CartActionButton.add(
                    onTap: increase,
                    // onTap: () => context.read<CartCubit>().increaseQuantity(item),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(quantity.toString(),
                        style: const TextStyle(fontSize: 16)),
                  ),
                  CartActionButton.remove(
                    onTap: decrease,
                    // onTap: () => context.read<CartCubit>().increaseQuantity(item),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
