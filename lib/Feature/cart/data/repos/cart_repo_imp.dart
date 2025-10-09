import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/domain/repos/cart_repo.dart';

class CartRepositoryImpl implements CartRepository {
  final List<CartItem> _cartItems = [];

  @override
  List<CartItem> getCartItems() => List.unmodifiable(_cartItems);

  @override
  void addToCart(CartItem item) {
    final index = _cartItems.indexWhere((i) => i.id == item.id);
    if (index != -1) {
      _cartItems[index] = CartItem(
        id: item.id,
        title: item.title,
        image: item.image,
        price: item.price,
        quantity: _cartItems[index].quantity + 1,
      );
    } else {
      _cartItems.add(item);
    }
  }

  @override
  void removeFromCart(int id) {
    _cartItems.removeWhere((item) => item.id == id);
  }

  @override
  void clearCart() => _cartItems.clear();

  @override
  void increaseQuantity(int id) {
    final index = _cartItems.indexWhere((item) => item.id == id);
    if (index != -1) {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity + 1,
      );
    }
  }

  @override
  void decreaseQuantity(int id) {
    final index = _cartItems.indexWhere((item) => item.id == id);
    if (index != -1 && _cartItems[index].quantity > 1) {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity - 1,
      );
    } else if (index != -1) {
      _cartItems.removeAt(index);
    }
  }
}
