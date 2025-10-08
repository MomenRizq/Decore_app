import '../../domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.image,
    required super.price,
    required super.rating,
    required super.ratingCount,
    required super.category,
    required super.stock,
    required super.isFavorite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      ratingCount: json['ratingCount'],
      category: json['category'],
      stock: json['stock'],
      isFavorite: json['isFavorite'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "image": image,
      "price": price,
      "rating": rating,
      "ratingCount": ratingCount,
      "category": category,
      "stock": stock,
      "isFavorite": isFavorite,
    };
  }
}
