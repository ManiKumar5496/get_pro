import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cart'),
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return const Center(child: Text('Your cart is empty'));
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final product = cartController.cartItems[index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(product.title),
                        subtitle: Text(
                            'Price: \$${product.price.toStringAsFixed(2)}'),
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  color: Colors.grey[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Total:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      cartController.cartSum()
                    ],
                  ),
                ),
              )
            ],
          );
        }
      }),
    );
  }
}
