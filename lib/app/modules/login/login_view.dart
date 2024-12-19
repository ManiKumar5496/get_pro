import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_sample/app_utils/color_constants.dart';
import '../../../common_widgets/common_buttons/elevated_button_common.dart';
import '../../../common_widgets/common_textfields/text_field_common.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            fontFamily: "jasmine",
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Email TextField
                Obx(
                      () => CommonTextField(
                    obscureText: false,
                    errorText: controller.usernameError.value.isNotEmpty ? controller.usernameError.value : null,
                    labelText: "User Name",
                    textFieldController: controller.userNameController.value,
                  ),
                ),
                const SizedBox(height: 16),

// Password TextField
                Obx(
                      () => CommonTextField(
                    obscureText: true, // It should be true to obscure the password by default
                    errorText: controller.passwordError.value.isNotEmpty ? controller.passwordError.value : null,
                    labelText: "Password",
                    textFieldController: controller.passwordController.value,
                  ),
                ),
                const SizedBox(height: 32),

                // Login Button
                ElevatedButtonCommon(
                  onTap: () {
                    var resultOfValidation = controller.validate();
                    debugPrint("is valid ${controller.isValid}");
                    if (resultOfValidation == true) {
                      controller.login(context);
                    }
                  },
                  buttonColor: AppColor.colorAccent,
                  buttonText: "Login",
                ),
                const SizedBox(height: 32),

                // Register Prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member? "),
                    GestureDetector(
                      onTap: () {
                        controller.goToRegister();
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontFamily: "jasmine",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      child: Image.asset("assets/images/google_icon.png"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      child: Image.asset("assets/images/Facebook_Logo.png"),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 40,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
                child: const Icon(
                  Icons.lock,
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
