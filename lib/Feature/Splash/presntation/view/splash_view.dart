import 'package:flutter/material.dart';
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

