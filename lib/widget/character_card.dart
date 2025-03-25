import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({
    super.key,
    required this.onTapFunction,
    required this.characterId,
    required this.characterName,
    required this.characterImage,
  });

  final int characterId;
  final Function() onTapFunction;
  final String characterName;
  final String characterImage;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapFunction,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Image.network(widget.characterImage),
              Text(widget.characterName),
            ],
          ),
        ),
      ),
    );
  }
}
