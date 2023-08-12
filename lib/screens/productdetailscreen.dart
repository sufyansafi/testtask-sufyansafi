import 'package:flutter/material.dart';

import 'package:testtask/getx/Controller/models/products.dart'; // Import the Product model

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Image.asset(
                  product.assets,
                  height: 400.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                product.name,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Price: \$${product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18.0, color: Colors.blue),
              ),
              SizedBox(height: 16.0),
              Text(
                'Details: ${product.details}', // Add a description property to the Product model
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
