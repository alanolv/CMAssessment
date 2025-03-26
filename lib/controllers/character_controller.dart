import 'package:flutter_assesment/model/character.dart';
import 'package:flutter_assesment/widget/error_snackbar.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CharacterController extends GetxController {
  var charactersByType = <String, List<Character>>{}.obs;

  Future<void> fetchCharacters(String type) async {
    try {
      final response = await http.get(
        Uri.parse("https://rickandmortyapi.com/api/character/?name=$type&status=alive"),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        charactersByType[type] = (data['results'] as List)
            .map((character) => Character.fromJson(character))
            .toList();
      } else {
        showErrorSnackbar("Error", "No se pudieron cargar los personajes de $type");
      }
    } catch (e) {
      showErrorSnackbar("Error", "No se pudieron cargar los personajes de $type");
    }
  }
}
