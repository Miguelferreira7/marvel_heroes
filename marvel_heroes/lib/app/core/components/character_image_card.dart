import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/app/core/consts/app_consts.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/character_image_model.dart';

class MarvelCharacterImageCard extends StatelessWidget {
  final CharacterImageModel image;
  final int characterId;

  const MarvelCharacterImageCard({
    super.key,
    required this.image,
    required this.characterId,
  });

  @override
  Widget build(BuildContext context) {
    if (image.path!.contains("image_not_available")) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          alignment: Alignment.topCenter,
          color: AppConsts.MARVEL_COLOR,
          child: Hero(
            tag: 'character-image-$characterId',
            child: SvgPicture.asset(
              "assets/marvel.svg",
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'character-image-$characterId',
          child: Image.network(
            image.url,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
