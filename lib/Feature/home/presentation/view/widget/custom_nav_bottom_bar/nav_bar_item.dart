import 'package:decore_app/Feature/home/presentation/view/widget/custom_nav_bottom_bar/active_item_nav_bar.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/custom_nav_bottom_bar/inactive_item_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../../domain/entites/bottom_navigation_bar_entity.dart';

class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.Image,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.Image,
          );
  }
}