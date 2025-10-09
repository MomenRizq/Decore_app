class CartItem {
  final int id;
  final String title;
  final String image;
  final double price;
  final int quantity;

  CartItem({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
  });

  CartItem copyWith({
    int? id,
    String? title,
    String? image,
    double? price,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
