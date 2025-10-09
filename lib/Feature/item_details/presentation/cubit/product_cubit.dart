import 'package:decore_app/Feature/item_details/domain/usecase/get_product.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProducts getProductsUseCase;

  ProductCubit(this.getProductsUseCase) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());

    try {
      final products = await getProductsUseCase();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  Future<void> fetchProductsByCategory(String category) async {
    emit(ProductLoading());
    try {
      final allProducts = await getProductsUseCase();

      final filteredProducts = allProducts
          .where((p) => p.category.toLowerCase() == category.toLowerCase())
          .toList();

      emit(ProductLoaded(filteredProducts));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
