import 'package:decore_app/Feature/cart/data/repos/cart_repo_imp.dart';
import 'package:decore_app/Feature/wishlist/data/repos/wishlist_repo_imp.dart';
import 'package:decore_app/Feature/wishlist/presentation/cubit/wishlist_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:decore_app/Feature/item_details/presentation/cubit/product_cubit.dart';
import 'package:decore_app/Feature/item_details/data/repo/product_repository_impl.dart';
import 'package:decore_app/Feature/item_details/data/datasources/local/product_local_datasource.dart';
import 'package:decore_app/Feature/item_details/domain/usecase/get_product.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_cubit.dart';

/// ✅ كل Cubit هنا مربوط بالـ Repository والـ UseCase الخاصة به
final List<BlocProvider> globalBlocProviders = [
  BlocProvider<ProductCubit>(
    create: (_) => ProductCubit(
      GetProducts(
        ProductRepositoryImpl(
          localDataSource: ProductLocalDataSourceImpl(),
        ),
      ),
    )..fetchProducts(), // تحميل المنتجات أول ما يبدأ
  ),
  BlocProvider<CartCubit>(
    create: (_) => CartCubit(
      CartRepositoryImpl(),
    ),
  ),
  BlocProvider<WishlistCubit>(
    create: (_) => WishlistCubit(WishlistRepositoryImpl())..loadWishlist(),
  ),
];
