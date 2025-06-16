import 'package:decore_app/Feature/onboarding/presentation/view/widget/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = 'OnboardingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: const OnboardingViewBody(),
    ));
  }
}
