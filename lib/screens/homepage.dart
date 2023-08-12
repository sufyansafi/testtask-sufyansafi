// home_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testtask/screens/productdetailscreen.dart';

import '../getx/Controller/productcontroller.dart';

class HomeScreen extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            final product = controller.products[index];
            return GestureDetector(
              onTap: () {
                // Navigate to the ProductDetailScreen when an image is clicked
                Get.to(ProductDetailScreen(product: product));
              },
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 16.0 : 24.0,
                  vertical: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      product.assets,
                      height: isSmallScreen ? 150.0 : 200.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: TextStyle(fontSize: isSmallScreen ? 16.0 : 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Text(
                        'Price: \$${product.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: isSmallScreen ? 14.0 : 16.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
