import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showErrorSnackbar(String title, String message){
  // Muestra un snackbar con un mensaje de error
  Get.snackbar(title, message, backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
}