import 'package:flutter_assesment/model/character.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CharacterController extends GetxController {
  var characters = [].obs;

  @override
  void onInit() {
    fetchCharacters();
    super.onInit();
  }

  Future<void> fetchCharacters() async {
    try {
      final response = await http.get(
        Uri.parse("https://rickandmortyapi.com/api/character"),
      );
      final data = json.decode(response.body);
      characters.value = (data['results'] as List)
          .map ((character) => Character.fromJson(character))
          .toList();
    } catch (e) {
      showErrorSnackbar("Error", "No se pudieron cargar los personajes");
    }
  }
}
