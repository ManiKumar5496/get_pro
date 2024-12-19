import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => TextField(
                  controller: controller.emailController.value,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    errorText: controller.emailError.value.isNotEmpty
                        ? controller.emailError.value
                        : null,
                    border: const OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                )),
            const SizedBox(height: 16),
            Obx(
              () => TextField(
                controller: controller.passwordController.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: controller.passwordError.value.isNotEmpty
                      ? controller.passwordError.value
                      : null,
                  border: const OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16),
            Obx(() => TextField(
                  controller: controller.confirmPasswordController.value,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    errorText:
                        controller.confirmPasswordError.value.isNotEmpty
                            ? controller.confirmPasswordError.value
                            : null,
                    border: const OutlineInputBorder(),
                  ),
                  obscureText: true,
                )),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                controller.validate();
                //controller.register(context);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
