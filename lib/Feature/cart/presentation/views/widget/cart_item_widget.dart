import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartItemWidget extends StatelessWidget {
  final String imagepath;
  final String title;
  final double price;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const CartItemWidget({
    Key? key,
    required this.imagepath,
    required this.title,
    required this.price,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
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
              border: Border.all(color: AppTheme.primaryColor,),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset( // استخدم Image.asset لو الصورة من الجهاز
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

          Row(
            children: [
              _circleButton('-', onRemove),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(quantity.toString(), style: const TextStyle(fontSize: 16)),
              ),
              _circleButton('+', onAdd),
            ],
          )
        ],
      ),
    );
  }

  Widget _circleButton(String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppTheme.primaryColor,
        ),
        padding: const EdgeInsets.all(4),
        child: Icon(
          label == '+' ? Icons.add : Icons.remove,
          color: Colors.white,
          size: 20,)
      ),
    );
  }
}
