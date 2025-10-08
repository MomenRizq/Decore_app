import 'package:decore_app/Feature/categories/domain/entities/category.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>> getCategories();
}
