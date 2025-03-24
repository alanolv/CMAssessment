import 'package:get/get.dart';

class Messages extends Translations{
  @override
  Map<String, Map<String,String>> get keys =>{
    'en_US':{
      'login':'Login',
      'email':'Email',
      'enter_your_email':'Enter your email',
      'password':'Password',
      'enter_your_password':'Enter your password',
    },
    'es_MX':{
      'login':'Iniciar Sesión',
      'email':'Correo',
      'enter_your_email':'Ingresa tu correo',
      'password':'Contraseña',
      'enter_your_password':'Ingresa tu contraseña',
    },
  };
}