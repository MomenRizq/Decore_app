import 'package:decore_app/Feature/categories/presentation/view/widget/categories_detailes_item.dart';
import 'package:decore_app/Feature/categories/presentation/view/widget/custom_app_bar_categories.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:decore_app/Feature/item_details/presentation/views/widget/details_of_item.dart';
import 'package:decore_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailsOfItemViewBody extends StatelessWidget {
  const DetailsOfItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: leftPadding,
          vertical: topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
             CustomAppBarCategories(
                title: 'item',
                isBackButtonVisible: true,
              ),
              const SizedBox(height: 20),
              DetailsOfItem(),
              const SizedBox(height: 20),
              CustomButton(text: 'Add to cart', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
