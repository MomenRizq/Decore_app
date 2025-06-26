import 'package:decore_app/Feature/categories/presentation/view/widget/custom_gridview_widget.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CustomAppBar(title: 'Categories',),
          CustomCategoryGrid(),
        ],
      ),
    );
  }
}
