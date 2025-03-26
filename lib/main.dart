import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/constant/messages.dart';
import 'package:flutter_assesment/screen/login_screen.dart';
//import 'package:flutter_assesment/screen/home_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assessment',
      translations: Messages(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          //Especificar el color de fondo de la barra de aplicaciones
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent),
        useMaterial3: true,
        ),
        //Obtener el idioma del dispositivo y establecer la ruta de inicio
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('es', 'MX'),
        home: const LoginScreen(),
      );
  }
}