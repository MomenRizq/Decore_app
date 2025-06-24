import 'package:decore_app/Feature/categories/presentation/view/widget/categories_detailes_item.dart';
import 'package:decore_app/Feature/home/presentation/view/widget/new_collection_item.dart';
import 'package:flutter/material.dart';

class CategoriesDetailesWidget extends StatelessWidget {
  const CategoriesDetailesWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
       height: MediaQuery.of(context).size.height , 
       child: GridView.builder(
         itemCount: 20,
         physics: const BouncingScrollPhysics(),
         padding: const EdgeInsets.all(2),
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           crossAxisSpacing: 5,
           mainAxisSpacing: 5,
           childAspectRatio: 0.65,
         ),
         itemBuilder: (context, index) => const CategoriesDetailesItem(),
       ),
                ),
    );
  }
}
