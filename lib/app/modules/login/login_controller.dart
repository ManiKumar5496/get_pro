import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../app_data/api_url.dart';
import '../../routes/app_routes.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final userNameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final usernameError = RxString("");
  final passwordError = RxString("");
  RxBool isValid = false.obs;

  bool validate() {
    if (userNameController.value.text.isEmpty &&
        passwordController.value.text.isEmpty) {
      usernameError.value = 'Username is required';
      passwordError.value = 'Password is required';
      isValid.value = false;
      return isValid.value;
    }

    // If both are filled, set isValid to true
    isValid.value = true;
    return isValid.value;
  }

  void goToRegister() {
    Get.toNamed(AppRoutes.register);
  }

  Future<void> login(BuildContext context) async {
    final Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final Map<String, dynamic> body = {
      "username": userNameController.value.text,
      "password": passwordController.value.text,
      "expiresInMins": 30
    };

    try {
      final response = await http.post(
        Uri.parse(ApiConstants.loginEndPoint),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        Get.toNamed(AppRoutes.bottomMain,
            arguments: userNameController.value.text);

        _showSnackBar(
          context,
          'Logged in successfully',
          Colors.green,
          Colors.white,
        );
      } else {
        usernameError.value = "Please check your user name";
        passwordError.value = "Please check your password";
        _showSnackBar(
          context,
          'Login failed',
          Colors.red,
          Colors.white,
        );
      }
    } catch (e) {
      _showSnackBar(
        context,
        'An error occurred: ${e.toString()}',
        Colors.red,
        Colors.white,
      );
    }
  }

  void _showSnackBar(BuildContext context, String message,
      Color backgroundColor, Color textColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          message,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
