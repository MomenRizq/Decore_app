import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWishlistView extends StatelessWidget {
  const EmptyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imgWishlist, height: 200, width: 200),
            const SizedBox(height: 20),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  "Your wishlist is empty",
                  style: TextStyles.poppinsSemiBold,
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
