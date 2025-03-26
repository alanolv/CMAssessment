import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/screen/home_screen.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';

class LoginController extends GetxController{
  // Controladores de texto para los campos de correo y contraseña
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

Future<void> performLoginAction() async {
  // Verifica si los campos de correo y contraseña no están vacíos
  if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
    // Navega a la pantalla de inicio
    Get.to(() => const HomeScreen());
  } else {
    showErrorSnackbar(
      'error_login'.tr,
      'error_empty_fields'.tr,
    );
  }
}
}
