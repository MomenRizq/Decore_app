import 'package:decore_app/Feature/cart/presentation/views/widget/track_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StateOrderViewBody extends StatelessWidget {
  const StateOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSuccess =
        true; // This should be replaced with actual logic to check order status
    return Padding(
      padding: const EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(
            title: "Order Status",
            isBackButtonVisible: true,
          ),
          Spacer(flex: 1),
          SvgPicture.asset(Assets.imgCheckProgress, height: 200, width: 200),
          const SizedBox(height: 20),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                isSuccess ? "Thank you !" : "oops! something went wrong",
                style: TextStyles.poppinsSemiBold.copyWith(
                  color: AppTheme.primaryColor,
                ),
                textAlign: TextAlign.center,
              )),
          const SizedBox(height: 10),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                isSuccess
                    ? "Your order is complete"
                    : "We are sorry your payment could not be processed, Try again.",
                style: TextStyles.poppinsSemiBold.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                text: "Go to Home",
                onPressed: () {},
                color: AppTheme.secondaryColor,
                width: MediaQuery.of(context).size.width * 0.45,
                height: 40,
                fontSize: 16,
              ),
              CustomButton(
                text: isSuccess ? "Track Order" : "Try again",
                onPressed: () {
                  Navigator.pushNamed(context, TrackView.routeName);
                },
                width: MediaQuery.of(context).size.width * 0.45,
                height: 40,
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
