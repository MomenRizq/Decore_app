import 'package:decore_app/Feature/categories/domain/entities/category.dart';
import 'package:decore_app/Feature/categories/domain/repos/category_repository.dart';

import '../datasources/local/category_local_datasource.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryLocalDataSource localDataSource;

  CategoryRepositoryImpl({required this.localDataSource});

  @override
  Future<List<CategoryEntity>> getCategories() async {
    final categories = await localDataSource.getCategories();
    return categories;
  }
}
