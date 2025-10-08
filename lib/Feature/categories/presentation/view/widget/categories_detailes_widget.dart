import 'package:decore_app/Feature/categories/presentation/view/widget/categories_detailes_item.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/new_collection_item.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesDetailesWidget extends StatelessWidget {
  const CategoriesDetailesWidget({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductLoaded) {
          final products = state.products;

          return Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                itemCount: products.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(2),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];

                  return CategoriesDetailesItem(product: product);
                },
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
