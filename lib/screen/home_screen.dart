import 'package:flutter/material.dart';
import 'package:flutter_assesment/widget/character_card.dart';
import 'package:get/get.dart';
import 'package:flutter_assesment/screen/detail_screen.dart';
import 'package:flutter_assesment/controllers/character_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final characterController = Get.put(CharacterController());
  // Lista de personajes
  final List<String> characterTypes = [
    'rick',
    'morty',
    'summer',
    'beth',
    'jerry',
  ];

  @override
  void initState() {
    super.initState();

    // Carga los personajes para cada tipo
    for (var type in characterTypes) {
      characterController.fetchCharacters(type);
    }
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
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Título de la pantalla
              Container(
                margin: const EdgeInsets.only(top: 35),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'home_screen_title'.tr,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              // Secciones de personajes
              ...characterTypes.map((type) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Título de la sección
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.04,
                        bottom: 0,
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Text(
                        'alive_${type}s'.tr,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    // Sección del personaje
                    Container(
                      margin: EdgeInsets.only(
                        top: 0,
                        left: MediaQuery.of(context).size.width * 0.02,
                      ),
                      height: 400,
                      child: Obx(() {
                        //Obtener personaje por nombre
                        final characters =
                            characterController.charactersByName[type] ?? [];
                        if (characters.isEmpty) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return ListView.builder(
                            itemCount: characters.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                // Espacio entre las tarjetas
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width * 0.03,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                // Tarjeta del personaje
                                child: CharacterCard(
                                  onTap: () {
                                    Get.to(
                                      DetailScreen( characterId: characters[index].id.toString(),
                                      ),
                                    );
                                  },
                                  characterId: characters[index].id,
                                  characterName: characters[index].name,
                                  characterImage: characters[index].image,
                                ),
                              );
                            },
                          );
                        }
                      }),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
