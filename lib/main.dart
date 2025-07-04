import 'package:decore_app/Feature/Splash/presntation/view/splash_view.dart';
import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:flutter/material.dart';
import 'core/helper_function/on_generate_route.dart';
import 'core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decore App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: onGenerateRoute,
      initialRoute: //MainView.routeName 
      SplashView.routeName, // Changed to SplashView
    );
  }
}
