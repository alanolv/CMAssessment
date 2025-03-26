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
      'error_login':'Error logging in',
      'error_empty_fields':'There are empty fields. Please fill all fields.',
      'home_screen_title':'Interdimensional Rickipedia',
      'characters':'Characters',
      'error':'Error',
      'error_fetching_characters':'Error fetching characters',
    },
    'es_MX':{
      'login':'Iniciar Sesión',
      'email':'Correo',
      'enter_your_email':'Ingresa tu correo',
      'password':'Contraseña',
      'enter_your_password':'Ingresa tu contraseña',
      'error_login':'Error al iniciar sesión',
      'error_empty_fields':'Hay campos vacíos. Por favor, llena todos los campos.',
      'home_screen_title':'Interdimensional Rickipedia',
      'characters':'Personajes',
      'error':'Error',
      'error_fetching_characters':'Error al obtener personajes',
    },
  };
}