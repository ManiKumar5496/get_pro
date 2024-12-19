import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping_sample/app/modules/product/products_model.dart';

class CartController extends GetxController {
  // Observable list of products in the cart
  var cartItems = <Product>[].obs;

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }
  int getItemCount(int productId) {
    return cartItems.where((item) => item.id == productId).length;
  }
  Widget cartSum() {
    double totalAmount = 0.0;

    for (int i = 0; i < cartItems.length; i++) {
      totalAmount += cartItems[i].price;
    }

    String formattedTotalAmount = totalAmount.toStringAsFixed(2);

    return Text(
      ' \$${formattedTotalAmount}',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

}
