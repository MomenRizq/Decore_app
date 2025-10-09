// lib/Feature/wishlist/presentation/cubit/wishlist_cubit.dart
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:decore_app/Feature/wishlist/domain/repos/wishlist_repo.dart';
import 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  final WishlistRepository wishlistRepository;

  WishlistCubit(this.wishlistRepository) : super(WishlistInitial());

  void toggleWishlist(ProductEntity product) {
    try {
      final items = wishlistRepository.getWishlistItems();

      final exists = items.any((item) => item.id == product.id);

      if (exists) {
        wishlistRepository.removeFromWishlist(product.id);
        product.isFavorite = false;
      } else {
        wishlistRepository.addToWishlist(product);
        product.isFavorite = true;
      }

      final updatedItems = wishlistRepository.getWishlistItems();
      emit(updatedItems.isEmpty
          ? WishlistEmpty()
          : WishlistLoaded(updatedItems));
    } catch (e) {
      emit(WishlistFailure(e.toString()));
    }
  }

  void loadWishlist() {
    emit(WishlistLoading());
    try {
      final items = wishlistRepository.getWishlistItems();
      if (items.isEmpty) {
        emit(WishlistEmpty());
      } else {
        emit(WishlistLoaded(items));
      }
    } catch (e) {
      emit(WishlistFailure(e.toString()));
    }
  }

  void addToWishlist(ProductEntity item) {
    try {
      wishlistRepository.addToWishlist(item);
      item.isFavorite = true;
      final items = wishlistRepository.getWishlistItems();
      emit(items.isEmpty ? WishlistEmpty() : WishlistLoaded(items));
    } catch (e) {
      emit(WishlistFailure(e.toString()));
    }
  }

  void removeFromWishlist(ProductEntity item) {
    try {
      wishlistRepository.removeFromWishlist(item.id);

      final items = wishlistRepository.getWishlistItems();
      emit(items.isEmpty ? WishlistEmpty() : WishlistLoaded(items));
    } catch (e) {
      emit(WishlistFailure(e.toString()));
    }
  }

  void clearWishlist() {
    try {
      wishlistRepository.clearWishlist();
      emit(WishlistEmpty());
    } catch (e) {
      emit(WishlistFailure(e.toString()));
    }
  }
}
