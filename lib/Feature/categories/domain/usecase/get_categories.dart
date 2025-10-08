import 'package:decore_app/Feature/categories/domain/entities/category.dart';
import 'package:decore_app/Feature/categories/domain/repos/category_repository.dart';

class GetCategories {
  final CategoryRepository repository;

  GetCategories(this.repository);

  Future<List<CategoryEntity>> call() async {
    return await repository.getCategories();
  }
}
