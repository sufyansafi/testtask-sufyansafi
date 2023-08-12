// product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testtask/api/productcontroller.dart';
// Import the ProductController

class ProductListScreen extends StatelessWidget {
  final controller = Get.put(ProductControl());

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List shown from fake api '),
      ),

      body: // product_list_screen.dart
// product_list_screen.dart
          Obx(
        () {
          if (controller.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (controller.error.isNotEmpty) {
            return Center(child: Text(controller.error));
          } else {
            // We don't need to display the list of products if there's an error
            return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                final product = controller.products[index];
                return ListTile(
                  leading: Image.network(product.image),
                  title: Text(product.title),
                  subtitle:
                      Text('Price: \$${product.price.toStringAsFixed(2)}'),
                );
              },
            );
          }
        },
      ),

// Obx(
//   () {
//     if (controller.isLoading) {
//       return Center(child: CircularProgressIndicator());
//     } else if (controller.error.isNotEmpty) {
//       return Center(child: Text(controller.error));
//     } else {
//       return ListView.builder(
//         itemCount: controller.products.length,
//         itemBuilder: (context, index) {
//           final product = controller.products[index];
//           return ListTile(
//             leading: Image.network(product.image),
//             title: Text(product.title),
//             subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
//           );
//         },
//       );
//     }
//   },
// ),

      // body: Obx(
      //   () => ListView.builder(
      //     itemCount: controller.products.length,
      //     itemBuilder: (context, index) {
      //       final product = controller.products[index];
      //       return ListTile(
      //         leading: Image.network(product.image),
      //         title: Text(product.title),
      //         subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
