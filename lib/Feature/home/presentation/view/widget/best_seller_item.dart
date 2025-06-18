import 'package:decore_app/Feature/home/presentation/view/widget/rate_widget.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_images.dart';
import 'shop_widget.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppTheme.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: MediaQuery.of(context).size.height * 0.01,
                children: [
                  Text(
                    'Kitchen Cart',
                    style: TextStyles.poppinsSemiBold
                        .copyWith(color: Colors.black54, fontSize: 20),
                  ),
                Expanded(
                    child: Text(
                      'Best for your kitchen and dining room space to make a statement in your home.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      style: TextStyles.spartanLight.copyWith(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Row(
                    spacing: 7,
                    children: [
                      RateWidget(),
                      ShopWidget(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(Assets.imgBestseller)),
        ],
      ),
    );
  }
}
