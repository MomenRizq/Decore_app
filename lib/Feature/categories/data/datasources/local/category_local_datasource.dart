import 'dart:convert';
import 'package:decore_app/Feature/categories/data/model/category_model.dart';
import 'package:flutter/services.dart';

abstract class CategoryLocalDataSource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  @override
  Future<List<CategoryModel>> getCategories() async {
    final String response =
        await rootBundle.loadString('assets/json/categories.json');
    final data = json.decode(response);
    return (data['categories'] as List)
        .map((e) => CategoryModel.fromJson(e))
        .toList();
  }
}
