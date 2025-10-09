// lib/Feature/wishlist/data/repos/wishlist_repo_impl.dart
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/wishlist/domain/repos/wishlist_repo.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final List<ProductEntity> _wishlistItems = [];

  @override
  List<ProductEntity> getWishlistItems() => List.unmodifiable(_wishlistItems);

  @override
  void addToWishlist(ProductEntity item) {
    final exists = _wishlistItems.any((i) => i.id == item.id);
    if (!exists) {
      _wishlistItems.add(item);
    }
  }

  @override
  void removeFromWishlist(int id) {
    _wishlistItems.removeWhere((item) => item.id == id);
  }

  @override
  void clearWishlist() {
    _wishlistItems.clear();
  }
}
