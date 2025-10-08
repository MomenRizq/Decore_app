import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/presentation/views/widget/details_of_item_view_body.dart';
import 'package:flutter/material.dart';

class DetailsOfItemview extends StatelessWidget {
  const DetailsOfItemview({super.key});
  static const String routeName = '/detailsOfItem';

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)?.settings.arguments as ProductEntity;
    return Scaffold(
      body: DetailsOfItemViewBody(product: product),
    );
  }
}
