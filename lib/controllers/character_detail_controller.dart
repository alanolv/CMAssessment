import 'package:flutter_assesment/model/character_detail.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailController extends GetxController {
  DetailController({required this.characterId});
  final String characterId;

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
        Uri.parse("https://rickandmortyapi.com/api/character/$characterId"),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        character.value = CharacterDetail.fromJson(data); // Asigna directamente el objeto
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
