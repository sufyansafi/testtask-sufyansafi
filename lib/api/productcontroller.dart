// product_controller.dart
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:testtask/api/apimodels/productmodel.dart';
 // Import the Product model

class ProductControl extends GetxController {
  final _products = <Productmodel>[].obs;
  List<Productmodel> get products => _products;

 final _isLoading = true.obs;
  bool get isLoading => _isLoading.value;


  final _error = ''.obs;
  String get error => _error.value;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  // void fetchProducts() async {
  //   final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

  //   if (response.statusCode == 200) {
  //     final List<dynamic> responseData = json.decode(response.body);
  //     final List<Productmodel> productList = responseData.map((item) => Productmodel.fromJson(item)).toList();
  //     _products.assignAll(productList);
  //   } else {
  //     throw Exception('Failed to load products');
  //   }
  // }

  void fetchProducts() async {
    try {
      _isLoading.value = true;
      _error.value = '';

      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        final List<Productmodel> productList = responseData.map((item) => Productmodel.fromJson(item)).toList();
        _products.assignAll(productList);
      } else {
        _error.value = 'Failed to load products';
      }
    } catch (e) {
      _error.value = 'Error: $e';
    } finally {
      _isLoading.value = false;
    }
  }
}
