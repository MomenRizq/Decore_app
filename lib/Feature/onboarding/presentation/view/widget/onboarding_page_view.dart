import 'package:decore_app/Feature/onboarding/presentation/view/widget/page_view_item.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            clipBehavior: Clip.antiAlias,
            decoration: const ShapeDecoration(
              color: AppTheme.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(34),
                ),
              ),
            ),
          ),
          PageView(
            controller: pageController,
            children: [
              PageViewItem(image: "assets/img/onboardin1.png" , title: "Welcome to Decore", subTitle: "Your one-stop solution for all home decor needs."),
              PageViewItem(image: "assets/img/onboardin2.png" , title: "Explore Our Collection", subTitle: "Discover a wide range of home decor items to suit your style."),
              PageViewItem(image: "assets/img/onboardin3.png" , title: "Shop with Ease", subTitle: "Enjoy a seamless shopping experience with us."),
              PageViewItem(image: "assets/img/onboardin4.png" , title: "Join Our Community", subTitle: "Connect with fellow decor enthusiasts and share your ideas."),
            ],
          ),
        ],
      ),
    );
  }
}
