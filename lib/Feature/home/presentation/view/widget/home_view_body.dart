import 'package:decore_app/Feature/home/presentation/view/widget/New_collection_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/Promotional_Banner_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/appbar_home_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/best_seller_widget.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/category_icon_widget.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          spacing: MediaQuery.of(context).size.height * 0.03,
          children: [
            AppbarHomeWidget(),
            PromotionalBannerWidget(
              banners: [
                Assets.imgPanner,
                Assets.imgPanner,
                Assets.imgPanner,
              ],
              height: MediaQuery.of(context).size.height * 0.2,
            ),
        
            CategoryIconWidget(
              CategoryIcon: [
                Assets.imgBedicon,
                Assets.imgChairicon,
                Assets.imgDiningtableicon,
                Assets.imgKitchenicon,
                Assets.imgSofaicon
              ],
            ),
        
            BestSellerWidget(),
            NewCollectionWidget()

          ],
        ),
      ),
    );
  }
}
