// lib/Feature/wishlist/domain/repos/wishlist_repo.dart
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';

abstract class WishlistRepository {
  List<ProductEntity> getWishlistItems();
  void addToWishlist(ProductEntity item);
  void removeFromWishlist(int id);
  void clearWishlist();
}
