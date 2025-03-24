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
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent),
        useMaterial3: true,
        ),
        locale: const Locale('es', 'MX'),
        home: const LoginScreen(),
      );
  }
}