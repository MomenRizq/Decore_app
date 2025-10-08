import 'package:decore_app/Feature/categories/presentation/view/widget/category_detiles_view_body.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetilesView extends StatelessWidget {
  const CategoryDetilesView({super.key});

  static const routeName = '/categoryDetails';

  @override
  Widget build(BuildContext context) {
    // نستقبل الـ arguments اللي جايه من Navigator.pushNamed
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // نستخرج البيانات اللي بعناها
    final String category = args['category'] as String;
    final ProductCubit productCubit = args['cubit'] as ProductCubit;

    return BlocProvider.value(
      value: productCubit, // نمرر نفس الـ Cubit اللي في MainView
      child: Scaffold(
        body: CategoryDetilesViewBody(category: category),
      ),
    );
  }
}
