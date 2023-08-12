// productmodel.dart
class Product {
  final String name;
  final double price;
  final String assets;
  final String details;

  Product({
    required this.name,
    required this.price,
    required this.assets,
    required this.details,
  });

  static fromJson(item) {}
}
