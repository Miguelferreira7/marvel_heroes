import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/app/core/consts/app_consts.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/comics/comic_model.dart';

class MarvelComicCard extends StatelessWidget {
  final ComicModel comic;

  const MarvelComicCard({super.key, required this.comic});

  @override
  Widget build(BuildContext context) {
    if (comic.image!.path!.contains("image_not_available")) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppConsts.MARVEL_COLOR,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/marvel.svg",
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4, left: 4, right: 4),
            child: AutoSizeText(
              comic.title!,
              maxLines: 3,
              minFontSize: 12,
              maxFontSize: 16,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          )
        ],
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              comic.image!.url,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4, left: 4, right: 4),
            child: AutoSizeText(
              comic.title!,
              maxLines: 3,
              minFontSize: 12,
              maxFontSize: 16,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
