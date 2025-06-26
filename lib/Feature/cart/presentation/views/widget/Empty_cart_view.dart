import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imgCart, height: 200, width: 200),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
              "There are no items in your cart",
              style: TextStyles.poppinsSemiBold,
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
