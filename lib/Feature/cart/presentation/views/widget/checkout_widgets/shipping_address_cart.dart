import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_style.dart';

class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard(
      {super.key, required this.name, required this.address});
  final String name, address;

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
            Text(
              name,
              style: TextStyles.poppinsMedium.copyWith(
                color: AppTheme.primaryColor,
              ),
            ),
            SizedBox(height: 4),
            Text(
              address,
              style: TextStyles.spartanRegular
            ),
          ],
        ),
      ),
    );
  }
}
