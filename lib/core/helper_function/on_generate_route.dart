
import 'package:decore_app/Feature/Splash/presntation/view/welcome_view.dart';
import 'package:decore_app/Feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';

import '../../Feature/Splash/presntation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) 
{

switch (settings.name) {
  case SplashView.routeName:
    return MaterialPageRoute(builder: (_) => const SplashView());
  case WelcomeView.routeName:
    return MaterialPageRoute(builder: (_) => const WelcomeView());
  case OnboardingView.routeName:
    return MaterialPageRoute(builder: (_) => const OnboardingView());

  default:
    return MaterialPageRoute(builder: (_) => const Scaffold());
}

}
