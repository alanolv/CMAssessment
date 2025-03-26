import 'package:flutter_assesment/model/character.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CharacterController extends GetxController {
  var charactersByName = <String, List<Character>>{}.obs;

  Future<void> fetchCharacters(String name) async {
    try {
      final response = await http.get(
        // Cambia la URL para obtener los personajes por nombre y estado
        Uri.parse("https://rickandmortyapi.com/api/character/?name=$name&status=alive"),
      );

      if (response.statusCode == 200) {
        // Convierte la respuesta en un objeto JSON
        final data = json.decode(response.body);
        charactersByName[name] = (data['results'] as List)
            .map((character) => Character.fromJson(character))
            .toList();
      } else {
        showErrorSnackbar("Error", "No se pudieron cargar los personajes de $name");
      }
    } catch (e) {
      showErrorSnackbar("Error", "No se pudieron cargar los personajes de $name");
    }
  }
}
