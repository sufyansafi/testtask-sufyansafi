// product_controller.dart
import 'package:get/get.dart';
import 'package:testtask/getx/Controller/models/products.dart';

class ProductController extends GetxController {
  final products = <Product>[
    Product(
      name: "Product 1",
      price: 19.99,
      assets: "assets/p1.jpeg",
      details:
          'healthy food Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),
    Product(
      name: "Product 2",
      price: 29.99,
      assets: "assets/p2.jpeg",
      details:
          'calerious burn Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Re with actual image URL
    ),
    Product(
      name: "Product 3",
      price: 19.99,
      assets: "assets/p3.jpeg",
      details:
          'fat removal Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),
    Product(
      name: "Product 4",
      price: 29.99,
      assets: "assets/p4.jpeg",
      details:
          'strong Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Re with actual image URL
    ),
    Product(
      name: "Product 5",
      price: 19.99,
      assets: "assets/p5.jpeg",
      details:
          'tasty Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),
    Product(
      name: "Product 6",
      price: 29.99,
      assets: "assets/p6.jpeg",
      details:
          'yummy Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Re with actual image URL
    ),

    Product(
      name: "Product 7",
      price: 19.99,
      assets: "assets/p7.jpeg",
      details:
          'juicey Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),
    Product(
      name: "Product 8",
      price: 29.99,
      assets: "assets/p8.jpeg",
      details:
          'stake like Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Re with actual image URL
    ),

    Product(
      name: "Product 9",
      price: 19.99,
      assets: "assets/p9.jpeg",
      details:
          'halal food Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),
    Product(
      name: "Product 10",
      price: 29.99,
      assets: "assets/p10.jpeg",
      details:
          'junk foodtikka Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Re with actual image URL
    ),
    Product(
      name: "Product 11",
      price: 19.99,
      assets: "assets/p11.jpeg",
      details:
          'Fast food is a type of convenient and ready-to-eat cuisine characterized by its quick preparation and service. It often includes popular items such as burgers, fries, pizza, and fried chicken, catering to people looking for a quick meal on-the-go.', // Replace with actual image URL
    ),

    // Add more products here
  ].obs;
}
