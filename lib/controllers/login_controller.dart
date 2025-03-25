import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/screen/home_screen.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

Future<void> performLoginAction() async {
  if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
    Get.to(() => const HomeScreen());
  } else {
    showErrorSnackbar(
      'error_login'.tr,
      'error_empty_fields'.tr,
    );
  }
}
}
