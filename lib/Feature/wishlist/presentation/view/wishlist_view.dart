import 'package:decore_app/Feature/wishlist/presentation/view/widget/wishlist_view_body.dart';
import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});
  static const String routeName = '/wishlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: const WishlistViewBody(),
    );
  }
}