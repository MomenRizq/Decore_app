import 'package:decore_app/Feature/cart/presentation/views/widget/checkout_widgets/order_item.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight( 
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  OrderItem(name: 'Dining Table Set', count: 1),
                  OrderItem(name: 'Bedroom Dhhhtttttttttttttttttttttresser', count: 2),
                  OrderItem(name: 'Adjustable Lamp', count: 3),
                ],
              ),
              Center( 
                child: Text(
                  '\$985.00',
                  style: TextStyles.poppinsBold.copyWith(
                    color: AppTheme.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
