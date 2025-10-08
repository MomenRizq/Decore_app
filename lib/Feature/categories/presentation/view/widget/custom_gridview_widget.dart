import 'package:decore_app/Feature/categories/presentation/view/widget/category_detiles_view.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_state.dart';
import 'package:decore_app/core/utils/app_text_style.dart';
import 'package:decore_app/core/utils/app_theme.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomCategoryGrid extends StatelessWidget {
  const CustomCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              CategoryDetilesView.routeName,
              arguments: {
                'category': categories[index],
                'cubit': context.read<ProductCubit>(),
              },
            );
          },
          child: Container(
            height: _getHeight(index),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyles.spartanLight
                    .copyWith(color: Colors.white, fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }

  double _getHeight(int index) {
    switch (index) {
      case 0:
        return 140;
      case 1:
        return 180;
      case 2:
        return 200;
      case 3:
        return 240;
      case 4:
        return 250;
      case 5:
        return 180;
      case 6:
        return 150;
      case 7:
        return 140;
      default:
        return 120;
    }
  }
}

final List<String> categories = CategoriesConstants.categories;
