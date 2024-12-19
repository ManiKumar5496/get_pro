import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_sample/app/modules/product/products_controller.dart';
import 'package:shopping_sample/app/modules/product/products_model.dart';
import 'package:shopping_sample/app/modules/cart/cart_controller.dart';

import '../../routes/app_routes.dart';

class ProductView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    final ProductsController controller = Get.put(ProductsController());
    final CartController cartController = Get.put(CartController());
    final String userName = Get.arguments ?? 'No email provided';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Products $userName',
            style: const TextStyle(
              fontFamily: "brandaRegular",
              fontSize: 30.0,
            ),
          ),
          actions: [
            Obx(() {
              // Display the cart icon with the number of items added
              final cartItemCount = cartController.cartItems.length;
              return IconButton(
                icon: Stack(
                  children: [
                    const Icon(Icons.shopping_cart, size: 30),
                    if (cartItemCount > 0)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Text(
                            '$cartItemCount',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                  ],
                ),
                onPressed: () {
                  // Navigate to the cart screen
                  Get.toNamed(AppRoutes.cart);
                },
              );
            }),
          ],
        ),
        body: FutureBuilder<ProductsScreen>(
          future: controller.fetchProducts(),
          builder: (BuildContext context, AsyncSnapshot<ProductsScreen> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final productsScreen = snapshot.data!;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust the number of columns as needed
                  crossAxisSpacing: 8.0, // Adjust spacing between columns
                  mainAxisSpacing: 8.0, // Adjust spacing between rows
                ),
                itemCount: productsScreen.carts[0].products.length,
                itemBuilder: (context, index) {
                  final product = productsScreen.carts[0].products[index];
                  RxInt itemCount = cartController.getItemCount(product.id).obs;

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      margin: EdgeInsets.zero,
                      child: GridTile(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  product.title,
                                  style: const TextStyle(
                                    fontFamily: "brandaRegular",
                                    fontSize: 16.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Price: \$${product.price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Obx(() {
                                // Observe the item count reactively
                                RxInt itemCount = cartController.getItemCount(product.id).obs;

                                return Center(
                                  child: Container(
                                    height:40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueGrey, // Border color
                                        width: 1.5, // Border width
                                      ),
                                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                                      color: Colors.white, // Background color
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        if (itemCount.value > 0)
                                          Text(
                                            'Added: ${itemCount.value}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            cartController.addToCart(product);

                                            // Show snack bar when item is added to the cart
                                            Get.snackbar(
                                              'Added to Cart',
                                              '${product.title} has been added to your cart',
                                              snackPosition: SnackPosition.BOTTOM,
                                              duration: const Duration(seconds: 1),
                                              backgroundColor: Colors.lightBlueAccent,
                                              colorText: Colors.white,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: Text('No data found'));
            }
          },
        ),
      ),
    );
  }
}
