import 'package:decore_app/Feature/onboarding/presentation/view/widget/onboarding_page_view.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../auth/signup_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;

  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingPageView(
          pageController: pageController,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                dotsCount: 4,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  activeColor: AppTheme.primaryColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: currentPage == 3
                      ? AppTheme.primaryColor
                      : AppTheme.secondaryColor,
                ),
              ),
              CustomButton(
                text: currentPage == 3 ? 'Get Started' : 'Next',
                onPressed: () {
                  currentPage == 3 ? Navigator.of(context).pushReplacementNamed(SignupView.routeName) :
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                width: 160,
                height: 45,
              )
            ],
          ),
        )
      ],
    );
  }
}
