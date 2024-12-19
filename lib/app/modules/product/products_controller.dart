import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shopping_sample/app/modules/product/products_model.dart';
import 'package:http/http.dart' as http;

class ProductsController extends GetxController {
  final String apiUrl =
      'https://dummyjson.com/carts'; // Replace with your API endpoint

  Future<ProductsScreen> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        print('Response body: ${response.body}');

        return ProductsScreen.fromRawJson(response.body);
      } else {
        throw Exception('Unexpected error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error occurred: $error');
      throw Exception(
          'Failed to load products. Please check your network connection or try again later.');
    }
  }
}
