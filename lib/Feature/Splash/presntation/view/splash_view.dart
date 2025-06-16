import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';
import '../../../home_screen.dart';
import 'widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
    static const routeName = 'SplashView';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SplashViewBody(),
    );
  }
}

