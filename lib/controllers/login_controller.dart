import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/screen/home_screen.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

Future<void> performLoginAction() async {
  if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
    print("button tapped");
    Get.to(HomeScreen());
  } else {
    showErrorSnackbar(
      'Error al iniciar sesión',
      'Hay campos vacíos. Por favor, llena todos los campos.',
    );
  }
}
}
