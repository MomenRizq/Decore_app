import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/widgets.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          'Estimated Delivery',
          style: TextStyles.poppinsMedium.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          '3 - 5 days',
          style: TextStyles.poppinsMedium.copyWith(
            color: AppTheme.primaryColor, // Green color for delivery time
          ),
        ),
      ],
    );
  }
}