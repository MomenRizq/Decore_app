import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String name;
  final int count;
  const OrderItem({required this.name, required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: Row(
          children: [
            Expanded(
                child: Text(
              name,
              style: TextStyles.spartanRegular,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )),
            const SizedBox(width: 8),
            Text(
              '$count items',
              style: TextStyles.spartanRegular.copyWith(
                color: AppTheme.primaryColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
