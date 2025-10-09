import 'package:decore_app/Feature/item_details/data/repo/product_repository_impl.dart';
import 'package:decore_app/Feature/item_details/domain/entities/product.dart';
import 'package:decore_app/Feature/item_details/domain/reops/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';
import 'package:decore_app/Feature/cart/domain/repos/cart_repo.dart';
import 'package:decore_app/Feature/cart/presentation/cubit/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepository cartRepository;

  CartCubit(this.cartRepository) : super(CartInitial());

  void loadCart() {
    emit(CartLoading());
    try {
      final items = cartRepository.getCartItems();
      if (items.isEmpty) {
        emit(CartEmpty());
      } else {
        emit(CartLoaded(items));
      }
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void addItem(CartItem item) {
    try {
      cartRepository.addToCart(item);
      final items = cartRepository.getCartItems();
      emit(items.isEmpty ? CartEmpty() : CartLoaded(items));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void removeItem(int id) {
    try {
      cartRepository.removeFromCart(id);
      final items = cartRepository.getCartItems();
      emit(items.isEmpty ? CartEmpty() : CartLoaded(items));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void clearCart() {
    try {
      cartRepository.clearCart();
      emit(CartEmpty());
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void increaseQuantity(int id) {
    try {
      cartRepository.increaseQuantity(id);
      emit(CartLoaded(cartRepository.getCartItems()));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void decreaseQuantity(int id) {
    try {
      cartRepository.decreaseQuantity(id);
      final items = cartRepository.getCartItems();
      emit(items.isEmpty ? CartEmpty() : CartLoaded(items));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void addProductToCart(ProductEntity product) {
    try {
      final cartItem = CartItem(
        id: product.id,
        title: product.title,
        image: product.image,
        price: product.price,
        quantity: 1,
      );
      cartRepository.addToCart(cartItem);
      emit(CartLoaded(cartRepository.getCartItems()));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  bool isInCart(int productId) {
    final currentState = state;
    if (currentState is CartLoaded) {
      return currentState.items.any((item) => item.id == productId);
    }
    return false;
  }

  void toggleCart(ProductEntity product) {
    try {
      final currentItems = cartRepository.getCartItems();
      final isInCart = currentItems.any((item) => item.id == product.id);

      if (isInCart) {
        cartRepository.removeFromCart(product.id);
      } else {
        final cartItem = CartItem(
          id: product.id,
          title: product.title,
          image: product.image,
          price: product.price,
          quantity: 1,
        );
        cartRepository.addToCart(cartItem);
      }

      final updatedItems = cartRepository.getCartItems();
      emit(updatedItems.isEmpty ? CartEmpty() : CartLoaded(updatedItems));
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }
}
