import 'package:decore_app/Feature/home/presentation/view/main_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrackView extends StatelessWidget {
  const TrackView({super.key});
  static const String routeName = '/track';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
          bottom: bottomPadding,
        ),
        child: Column(
          children: [
            CustomAppBar(
              title: "Track Order",
              isBackButtonVisible: true,
            ),
            Spacer(flex: 1),
            SvgPicture.asset(Assets.imgCheckProgress, height: 200, width: 200),
            const SizedBox(height: 20),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "This Feature coming soon !",
                  style: TextStyles.poppinsSemiBold.copyWith(
                    color: AppTheme.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                )),
            Spacer(flex: 1),
            CustomButton(
              text: "Go to Home",
              onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, MainView.routeName, (route) => false);
                },
              color: AppTheme.secondaryColor,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
