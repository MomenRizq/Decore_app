import 'package:decore_app/Feature/cart/domain/entities/cart_item.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final List<CartItem> items;
  CartLoaded(this.items);
}

class CartEmpty extends CartState {}

class CartError extends CartState {
  final String message;
  CartError(this.message);
}
