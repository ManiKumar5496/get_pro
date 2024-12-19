import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_sample/app/modules/cart/cart_view.dart';
import '../../app/modules/product/products_view.dart';
import '../../app/modules/profile/profile_view.dart';
import 'bottom_navigation_controller.dart';

class BottomMainBar extends StatelessWidget {
  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          index: navController.currentIndex.value,
          children: [
            ProductView(),
            CartView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: (index) => navController.changeTab(index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }}