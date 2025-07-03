import 'package:decore_app/Feature/Profile/domain/entities/order_item_entity';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderItemCard extends StatelessWidget {
  final OrderItemEntity item;

  const OrderItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat.MMMd().format(item.date);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Status and Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order: ${item.status}", style: TextStyles.spartanMedium.copyWith(color: Colors.grey.shade700)),
              Text(dateFormatted, style: TextStyles.spartanMedium.copyWith(color: Colors.grey.shade700)),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(color: AppTheme.primaryColor, thickness: 2),

          // Product Row
          Row(
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  Assets.imgOnboardin1,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              // Product Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style:  TextStyles.poppinsBold.copyWith(color: AppTheme.primaryColor),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.description,
                      style: TextStyles.spartanRegular.copyWith(color: Colors.grey.shade600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text("\$${item.price.toStringAsFixed(2)}" , style: TextStyles.spartanMedium),
                        const SizedBox(width: 8),
                        Text("${item.quantity}x uds.", style: TextStyles.spartanMedium),
                        const Spacer(),
                        Text(
                          "Total: \$${item.total.toStringAsFixed(2)}",
                          style: TextStyles.spartanSemiBold.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Action Icons
              Column(
                children: const [
                  Icon(Icons.delete_outline, color: AppTheme.primaryColor),
                  SizedBox(height: 8),
                  Icon(Icons.add_circle_outline, color: AppTheme.primaryColor),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
