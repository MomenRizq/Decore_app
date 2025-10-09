import 'package:flutter/material.dart';
import '../../../../../core/utils/app_theme.dart';

class CartActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double size;
  final Color color;
  final Color iconColor;
  final EdgeInsetsGeometry padding;
  final bool showBorder;

  const CartActionButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 30,
    this.color = AppTheme.primaryColor,
    this.iconColor = Colors.white,
    this.padding = const EdgeInsets.all(4),
    this.showBorder = false,
  });

  factory CartActionButton.add({required VoidCallback onTap}) {
    return CartActionButton(
      icon: Icons.add,
      onTap: onTap,
    );
  }

  factory CartActionButton.remove({required VoidCallback onTap}) {
    return CartActionButton(
      icon: Icons.remove,
      onTap: onTap,
    );
  }

// icon: const Icon(Icons.delete_outline),
//           color: Color(0xFFD57B66),

  factory CartActionButton.delete({
    required VoidCallback onTap,
    Color color = AppTheme.primaryColor,
  }) {
    return CartActionButton(
      icon: Icons.delete_outline,
      color: AppTheme.secondaryColor,
      iconColor: color,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: showBorder ? Border.all(color: Colors.grey.shade300) : null,
        ),
        padding: padding,
        child: Icon(
          icon,
          color: iconColor,
          size: size * 0.6,
        ),
      ),
    );
  }
}
