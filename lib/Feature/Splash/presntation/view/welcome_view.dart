import 'package:decore_app/Feature/Splash/presntation/view/widget/welcome_view_body.dart';
import 'package:flutter/material.dart';


class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const routeName = 'WelcomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WelcomeViewBody(),
    );
  }
}
