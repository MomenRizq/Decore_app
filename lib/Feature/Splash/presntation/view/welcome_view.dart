import 'dart:async';
import 'package:decore_app/Feature/Splash/presntation/view/widget/welcome_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';
import '../../../home_screen.dart';

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
