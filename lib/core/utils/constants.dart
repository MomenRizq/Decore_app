import 'package:decore_app/Feature/Profile/domain/entities/order_item_entity';

class CategoriesConstants {
  static const List<String> categories = [
    "Dining Table",
    "Sofa",
    "Bed",
    "Tables",
    "Chairs",
    "Kitchen",
    "Decor",
    "Other",
  ];
}

class OrdersItemForTest {
  static List<OrderItemEntity> orders = [
    OrderItemEntity(
      status: 'Delivered',
      title: 'Serenity Nightstand',
      description: 'Modern wooden nightstand with drawers and decor items.',
      imageUrl: 'https://i.imgur.com/nL8cSkb.png', // صورة مشابهة للديزاين
      price: 7.50,
      quantity: 1,
      date: DateTime(2025, 5, 15),
    ),
    OrderItemEntity(
      status: 'Canceled',
      title: 'Blue Table Lamp',
      description: 'Elegant ceramic lamp with blue floral patterns.',
      imageUrl: 'https://i.imgur.com/dKzNfye.png',
      price: 25.00,
      quantity: 2,
      date: DateTime(2025, 5, 22),
    ),
    OrderItemEntity(
      status: 'Delivered',
      title: 'Wall Clock Vintage',
      description: 'Rustic wall clock with Roman numerals.',
      imageUrl: 'https://i.imgur.com/kF8G0nA.png',
      price: 30.00,
      quantity: 1,
      date: DateTime(2025, 6, 10),
    ),
    OrderItemEntity(
      status: 'Canceled',
      title: 'Leather Office Chair',
      description: 'Ergonomic chair with adjustable height and lumbar support.',
      imageUrl: 'https://i.imgur.com/2d9EhMM.png',
      price: 120.00,
      quantity: 1,
      date: DateTime(2025, 6, 28),
    ),
    OrderItemEntity(
      status: 'Delivered',
      title: 'Serenity Nightstand',
      description: 'Modern wooden nightstand with drawers and decor items.',
      imageUrl: 'https://i.imgur.com/nL8cSkb.png', // صورة مشابهة للديزاين
      price: 7.50,
      quantity: 1,
      date: DateTime(2025, 5, 15),
    ),
    // Add more items as needed
  ];
}

const double topPadding = 60.0;
const double bottomPadding = 60.0;
const double leftPadding = 15.0;
const double rightPadding = 15.0;
const kUserData = 'userData';
