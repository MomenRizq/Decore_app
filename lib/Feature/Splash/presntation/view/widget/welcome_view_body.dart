import 'package:decore_app/core/widgets/custom_container_Text.dart';
import 'package:decore_app/Feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_img.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.isDarkMode ? AppTheme.secondaryColorDark : Colors.white ,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              height: 148,
              width: 175,
              imagePath: 'assets/img/VectorW.png',
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CustomImage(
                  height: 45,
                  width: 175,
                  imagePath: 'assets/img/HOMEW.png',
                )),
            CustomImage(
              height: 41,
              width: 170,
              imagePath: 'assets/img/DECORW.png',
            ),
            SizedBox(height: 25),
            CustomContainerText(
                subTitle:
                    'your ultimate destination for home decor inspiration and shopping.'),
            SizedBox(height: 25),
            CustomButton(
                text: 'Let\'s Go',
                onPressed: () {
                  Navigator.of(context).pushNamed(OnboardingView.routeName);
                  print('Button Pressed');
                },
                textStyle: TextStyles.poppinsSemiBold),
          ],
        ),
      ),
    );
  }
}
