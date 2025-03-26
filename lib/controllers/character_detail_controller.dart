import 'package:flutter_assesment/model/character_detail.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailController extends GetxController {
  DetailController({required this.characterId});
  final String characterId;
  // Cambia lista a Rxn para poder cambiar el valor
  var character = Rxn<CharacterDetail>(); // Cambia lista a un solo objeto
  var isLoading = true.obs; // Para mostrar loading en la UI

  @override
  void onInit() {
    fetchCharacter(); // Llama a la función correctamente
    super.onInit();
  }

  Future<void> fetchCharacter() async {
    try {
      isLoading.value = true;
      final response = await http.get(
        // Cambia la URL para obtener los personajes por ID
        Uri.parse("https://rickandmortyapi.com/api/character/$characterId"),
      );

      if (response.statusCode == 200) {
        // Convierte la respuesta en un objeto JSON
        final data = json.decode(response.body);
        character.value = CharacterDetail.fromJson(
          data,
        );
      } else {
        showErrorSnackbar("Error", "No se pudo cargar el personaje");
      }
    } catch (e) {
      showErrorSnackbar("Error", "No se pudo conectar con la API");
    } finally {
      isLoading.value = false;
    }
  }
}
