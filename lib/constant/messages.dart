import 'package:get/get.dart';

class Messages extends Translations{
  @override
  //Traducciones
  Map<String, Map<String,String>> get keys =>{
    'en_US':{
      'login':'Login',
      'email':'Email',
      'enter_your_email':'Enter your email',
      'password':'Password',
      'enter_your_password':'Enter your password',
      'error_login':'Error logging in',
      'error_empty_fields':'There are empty fields. Please fill all fields.',
      'home_screen_title':'Interdimensional Rickpedia',
      'characters':'Characters',
      'error':'Error',
      'error_fetching_characters':'Error fetching characters',
      'episodes':'Episodes',
      'alive_ricks':'Alive Ricks',
      'alive_mortys':'Alive Mortys',
      'alive_summers':'Alive Summers',
      'alive_beths':'Alive Beths',
      'alive_jerrys':'Alive Jerrys',
      'status':'Status',
      'specie':'Specie',
      'gender':'Gender',
      'current_location':'Current Location',
    },
    'es_MX':{
      'login':'Iniciar Sesión',
      'email':'Correo',
      'enter_your_email':'Ingresa tu correo',
      'password':'Contraseña',
      'enter_your_password':'Ingresa tu contraseña',
      'error_login':'Error al iniciar sesión',
      'error_empty_fields':'Hay campos vacíos. Por favor, llena todos los campos.',
      'home_screen_title':'Interdimensional Rickpedia',
      'characters':'Personajes',
      'error':'Error',
      'error_fetching_characters':'Error al obtener personajes',
      'episodes':'Episodios',
      'alive_ricks':'Ricks Vivos',
      'alive_mortys':'Mortys Vivos',
      'alive_summers':'Summers Vivas',
      'alive_beths':'Beths Vivas',
      'alive_jerrys':'Jerrys Vivos',
      'status':'Estado',
      'specie':'Especie',
      'gender':'Género',
      'current_location':'Ubicación Actual',
    },
  };
}