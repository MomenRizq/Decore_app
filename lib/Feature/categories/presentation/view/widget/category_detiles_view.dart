import 'package:decore_app/Feature/categories/presentation/view/widget/category_detiles_view_body.dart';
import 'package:decore_app/Feature/categories/presentation/view/widget/custom_app_bar_categories.dart';
import 'package:flutter/material.dart';

class CategoryDetilesView extends StatelessWidget {
  const CategoryDetilesView({super.key});
  static const String routeName = '/categoryDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryDetilesViewBody()
    );
  }
}
