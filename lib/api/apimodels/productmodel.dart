// fetchnthe date  from api product model from dart//

// product_model.dart
class Productmodel {
  final int id;
  final String title;
  final double price;
  final String image;

  Productmodel({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });

  factory Productmodel.fromJson(Map<String, dynamic> json) {
    return Productmodel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}
