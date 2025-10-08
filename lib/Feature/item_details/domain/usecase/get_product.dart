import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/domain/reops/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<List<ProductEntity>> call() async {
    return await repository.getProducts();
  }
}
