import 'package:decore_app/Feature/wishlist/presentation/view/widget/empty_wishlist_view.dart';
import 'package:decore_app/Feature/wishlist/presentation/view/widget/full_wishlist_view.dart';
import 'package:decore_app/core/utils/app_images.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isWishlistEmpty = false; // This should be replaced with actual logic to check if the wishlist is empty
    return Column(
      children: [
        CustomAppBar(title: "Wishlist"),
        isWishlistEmpty ? const EmptyWishlistView() : Expanded(child: const FullWishlistView()),
      ],
    );
  }
}
