import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/order_item.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key, required this.items});
  final List<CartItem> items;

  double get totalPrice =>
      items.fold(0, (sum, item) => sum + (item.price * item.quantity) + 5);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // هنا استخدمنا الـ spread operator بدل ListView
            ...items.map(
              (item) => OrderItem(
                name: item.title,
                count: item.quantity,
              ),
            ),

            const Divider(thickness: 1),
            const SizedBox(height: 10),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Total: \$${totalPrice.toStringAsFixed(2)}',
                style: TextStyles.poppinsBold.copyWith(
                  color: AppTheme.primaryColor,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
