import 'dart:convert';
import 'package:decore_app/Feature/item_details/data/model/product_model.dart';
import 'package:flutter/services.dart' show rootBundle;

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getProducts();
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  @override
  Future<List<ProductModel>> getProducts() async {
    final String response =
        await rootBundle.loadString('assets/json/products.json');
    final data = json.decode(response);
    return (data['products'] as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();
  }
}
