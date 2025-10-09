// lib/Feature/wishlist/presentation/cubit/wishlist_state.dart

import 'package:decore_app/Feature/item_details/domain/entities/product.dart';

abstract class WishlistState {}

class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final List<ProductEntity> items;
  WishlistLoaded(this.items);
}

class WishlistEmpty extends WishlistState {}

class WishlistFailure extends WishlistState {
  final String message;
  WishlistFailure(this.message);
}
