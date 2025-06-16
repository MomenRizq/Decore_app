import 'dart:async';
import 'package:decore_app/Feature/Splash/presntation/view/welcome_view.dart';
import 'package:decore_app/Feature/Splash/presntation/view/widget/custom_img.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
         Navigator.of(context).pushNamed(WelcomeView.routeName);
      });
    });

    Timer(Duration(milliseconds: 10), () {
      setState(() {
        _isVisible =
            true; // Now it is showing fade effect and navigating to Login page
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppTheme.primaryColor,
        child: Center(
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 1500),
            opacity: _isVisible ? 1.0 : 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(
                  height: 148,
                  width: 175,
                  imagePath: Assets.imgVector,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CustomImage(
                    height: 45,
                    width: 175,
                    imagePath: 'assets/img/HOME.png',
                  )
                ),
                CustomImage(
                  height: 41,
                  width: 170,
                  imagePath: 'assets/img/DECOR.png',
                ),
               
              ],
            ),
          ),
        ),
      );
    
  }
}
