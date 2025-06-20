import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Categories")),
    );
  }
}