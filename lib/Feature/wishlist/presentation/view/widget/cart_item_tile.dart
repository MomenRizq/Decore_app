import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const CartItemTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Image Thumbnail with tap
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          /// Title & Price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.poppinsSemiBold.copyWith(
                    color: AppTheme.primaryColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${price.toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                ),
              ],
            ),
          ),

          /// Delete Icon
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.delete_outline),
            color: const Color(0xFFD57B66),
            tooltip: 'Remove',
          ),
        ],
      ),
    );
  }
}
