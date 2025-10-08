import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/domain/reops/product_repository.dart';

import '../datasources/local/product_local_datasource.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductLocalDataSource localDataSource;

  ProductRepositoryImpl({required this.localDataSource});

  @override
  Future<List<ProductEntity>> getProducts() async {
    final products = await localDataSource.getProducts();

    return products;
  }
}
