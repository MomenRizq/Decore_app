import 'package:decore_app/Feature/categories/presentation/view/widget/categories_view_body.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoriesViewBody(),
    );
  }
}