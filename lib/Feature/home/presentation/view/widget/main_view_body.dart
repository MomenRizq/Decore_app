import 'package:decore_app/Feature/cart/presentation/views/cart_view.dart';
import 'package:decore_app/Feature/categories/presentation/view/categories_view.dart';
import 'package:decore_app/Feature/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';


class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        CategoriesView(),
        CartView(),
        CategoriesView(),
        HomeView(),
        
      ],
    );
  }
}