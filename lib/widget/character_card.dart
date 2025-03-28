import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({
    super.key,
    required this.onTap,
    required this.characterId,
    required this.characterName,
    required this.characterImage,
  });

  final int characterId;
  final Function() onTap;
  final String characterName;
  final String characterImage;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
        width: MediaQuery.of(context).size.width * 0.60,
        child: Card(
          elevation: 5,
          child: Column(
            //alinear al centro
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 310,
                //ancho de la imagen
                width: double.infinity,
                //imagen de la red
                child: Image.network(widget.characterImage, fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Text(
                  widget.characterName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
