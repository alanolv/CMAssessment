import 'package:flutter/material.dart';
import 'package:flutter_assesment/widget/character_card.dart';
import 'package:get/get.dart';
//import 'package:flutter_assesment/widget/character_card.dart';
import 'package:flutter_assesment/controllers/character_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CharacterController characterController = Get.put(
    CharacterController(),
  );
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
              Container(
                margin: const EdgeInsets.only(top: 35),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'home_screen_title'.tr,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:  MediaQuery.of(context).size.width * 0.04, bottom: 0),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.05),
                child: Text('characters'.tr, style: TextStyle(fontSize: 22)),
              ),
              Container(
                margin:  EdgeInsets.only(top: 0, left:  MediaQuery.of(context).size.width * 0.03),
                height: 400,
                child: Obx(() {
                  if (characterController.characters.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      itemCount: characterController.characters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          //onTap: (){
                          //characterController.getCharacterDetails(characterController.characters[index].id);
                          //},
                          child: Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.03,
                            ),
                            padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.03),
                            child: CharacterCard(
                              onTap:
                                  () =>
                                      {}, //characterController.getCharacterDetails(characterController.characters[index].id),
                              characterId:
                                  characterController.characters[index].id,
                              characterName:
                                  characterController.characters[index].name,
                              characterImage:
                                  characterController.characters[index].image,
                            ),
                          ),
                        );
                      },
                    );
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
