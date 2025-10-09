import 'package:decore_app/Feature/Splash/presntation/view/splash_view.dart';
import 'package:decore_app/core/services/get_it_services.dart';
import 'package:decore_app/core/services/shared_preference_singleton.dart';
import 'package:decore_app/core/utils/bloc_providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/helper_function/on_generate_route.dart';
import 'core/utils/app_theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: globalBlocProviders,
      child: MaterialApp(
        title: 'Decore App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        onGenerateRoute: onGenerateRoute,
        initialRoute: //MainView.routeName
            SplashView.routeName,
        // Changed to SplashView
      ),
    );
  }
}
