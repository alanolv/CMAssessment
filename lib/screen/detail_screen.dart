import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/controllers/character_detail_controller.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.characterId});
  final String characterId;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late final DetailController characterController;

  @override
  void initState() {
    super.initState();
    characterController = Get.put(
      DetailController(characterId: widget.characterId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black, // Cambia el color de la flecha de regreso
          ),
        ),
        body: Obx(() {
          if (characterController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (characterController.character.value == null) {
            return const Center(child: Text("No se encontró el personaje."));
          }

          final character = characterController.character.value!;

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(character.image),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, 30),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: Text(
                            character.name,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "${'status'.tr}: ${character.status}",
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "${'gender'.tr}: ${character.gender}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "${'specie'.tr}: ${character.species}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "${'current_location'.tr}: ${character.locationName}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
