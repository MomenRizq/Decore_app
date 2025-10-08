import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:decore_app/core/utils/constants.dart';
import 'package:decore_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_detailes_widget.dart';

class CategoryDetilesViewBody extends StatefulWidget {
  const CategoryDetilesViewBody({super.key, required this.category});
  final String category;

  @override
  State<CategoryDetilesViewBody> createState() =>
      _CategoryDetilesViewBodyState();
}

class _CategoryDetilesViewBodyState extends State<CategoryDetilesViewBody> {
  bool _fetched = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_fetched) {
      context.read<ProductCubit>().fetchProductsByCategory(widget.category);
      _fetched = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: leftPadding, vertical: topPadding),
        child: Column(
          children: [
            CustomAppBar(
              title: widget.category,
              isBackButtonVisible: true,
              isSearchButtonVisible: true,
            ),
            const SizedBox(height: 15),
            CategoriesDetailesWidget(category: widget.category),
          ],
        ),
      ),
    );
  }
}
