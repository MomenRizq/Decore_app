import 'package:decore_app/Feature/home/presentation/view/widget/best_seller_item.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Sellers',
            style: TextStyles.poppinsSemiBold
                .copyWith(color: AppTheme.primaryColor, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          BestSellerItem(),  
        ],
      ),
    );
  }
}
