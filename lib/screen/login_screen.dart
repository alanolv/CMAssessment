import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/controllers/login_controller.dart';
import 'package:flutter_assesment/widget/action_button.dart';
import 'package:flutter_assesment/widget/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Inicializa el controlador de login
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  // Establece el radio de las esquinas en la imagen
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(175),
                    bottomRight: Radius.circular(175),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/rick_and_mory_cover.jpg'),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, 30),
                child: Form(
                  child: Container(
                    //Uso de mediaquery para diseño responsivo
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.12,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: Text(
                            'login'.tr,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Campos de texto para correo y contraseña
                        Container(
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.007,
                          ),
                          child: AppTextFormField(
                            label: 'email'.tr,
                            hint: 'enter_your_email'.tr,
                            controller: loginController.emailController,
                          ),
                        ),
                        AppTextFormField(
                          label: 'password'.tr,
                          hint: 'enter_your_password'.tr,
                          isPassword: true,
                          controller: loginController.passwordController,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                          ),
                          child: ActionButton(
                            text: 'login'.tr,
                            onTapFunction: loginController.performLoginAction,
                            isFilled: true,
                            hasShadow: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
