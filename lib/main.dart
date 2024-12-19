import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'GetX Routing Demo',
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.getPages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ),
  );
}



