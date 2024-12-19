import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../routes/app_routes.dart';

class RegisterController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  // Reactive variables for error messages
  final emailError = RxString("");
  final passwordError = RxString("");
  final confirmPasswordError = RxString("");

  void validate() {
    // Resetting error messages
    emailError.value = "";
    passwordError.value = "";
    confirmPasswordError.value = "";

    // Email validation
    if (!GetUtils.isEmail(emailController.value.text)) {
      emailError.value = 'Invalid user name';
    }

    // Password validation
    final password = passwordController.value.text;
    if (password.isEmpty) {
      passwordError.value = 'Password is required';
    } else if (password.length < 6) {
      passwordError.value = 'Password must be at least 6 characters long';
    }

    // Confirm password validation
    final confirmPassword = confirmPasswordController.value.text;
    if (confirmPassword.isEmpty) {
      confirmPasswordError.value = 'Please re-enter your password';
    } else if (confirmPassword != password) {
      confirmPasswordError.value = 'Passwords do not match';
    }

    // Check if all errors are empty
    if (emailError.value.isEmpty &&
        passwordError.value.isEmpty &&
        confirmPasswordError.value.isEmpty) {
      // Proceed with registration if validation passes
      print('Registration successful');
    }
  }

  @override
  void onClose() {
    // Clean up the controllers when the controller is disposed
    emailController.value.dispose();
    passwordController.value.dispose();
    confirmPasswordController.value.dispose();
    super.onClose();
  }

  Future<void> register(BuildContext context) async {
    const String url = "https://dummyjson.com/auth/login";
    final Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final Map<String, dynamic> body = {
      "username": emailController.value.text,
      "password": passwordController.value.text,
      "cnfpassword": passwordController.value.text,
      "expiresInMins": 30
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);

        Get.toNamed(AppRoutes.login);

        _showSnackBar(
          context,
          'Registered successfully',
          Colors.green,
          Colors.white,
        );
      } else {
        _showSnackBar(
          context,
          'registration failed',
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
