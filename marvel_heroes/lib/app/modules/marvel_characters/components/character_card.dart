import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/character_model.dart';
import '../pages/character_details_page.dart';
import 'character_image_card.dart';

class MarvelCharacterCard extends StatelessWidget {
  final CharacterModel character;

  const MarvelCharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(6),
      child: GestureDetector(
        onTap: () => Modular.to.pushNamed(
          CharacterDetailsPage.ROUTE,
          arguments: character,
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            MarvelCharacterImageCard(
              image: character.image!,
              characterId: character.id!,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: const LinearGradient(
                  colors: [Colors.black87, Colors.black45, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.25, 0.4],
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(5.0),
              child: AutoSizeText(
                character.name!,
                overflow: TextOverflow.ellipsis,
                maxFontSize: 13,
                minFontSize: 10,
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
