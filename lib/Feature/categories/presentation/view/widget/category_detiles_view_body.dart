import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'categories_detailes_widget.dart';

class CategoryDetilesViewBody extends StatelessWidget {
  const CategoryDetilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: leftPadding, vertical: topPadding),
        child: Column(
          children: [
            CustomAppBar(title: "categry name", isBackButtonVisible: true , isSearchButtonVisible: true,),
            const SizedBox(height: 15),
            CategoriesDetailesWidget(),
          ],
        ),
      ),
    );
  }
}
