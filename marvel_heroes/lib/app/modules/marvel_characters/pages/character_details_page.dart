import 'package:auto_size_text/auto_size_text.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/components/character_image_card.dart';
import 'package:marvel_heroes/app/core/consts/app_consts.dart';
import '../components/comic_card.dart';
import '../cubit/marvel_cubit.dart';
import '../cubit/marvel_state.dart';
import '../models/character/character_model.dart';
import '../models/comics/comic_model.dart';

class CharacterDetailsPage extends StatelessWidget {
  static const String ROUTE = "/details";
  final CharacterModel character;

  const CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 65.0,
        title: const Text(
          "HERO DETAILS",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 16.0),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildCharactersResume(context, character),
            _buildCharacterComics(),
          ],
        ),
      ),
    );
  }

  Widget _buildCharactersResume(
      BuildContext context, CharacterModel character) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: MarvelCharacterImageCard(
            image: character.image!,
            characterId: character.id!,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            character.name!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              color: AppConsts.MARVEL_COLOR,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        AutoSizeText(
          character.description!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _buildCharacterComics() {
    return BlocProvider(
      create: (context) =>
          Modular.get<MarvelCubit>()..getComicsFromCharacter(character.id!),
      child: BlocConsumer<MarvelCubit, MarvelState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppConsts.MARVEL_COLOR),
            );
          }

          if (state.comics.isEmpty) {
            return const Center(
                child: Text("This character do not have comics."));
          }

          return Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: const Text(
                  "Comics",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DynamicHeightGridView(
                shrinkWrap: true,
                itemCount: state.comics.length,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 32.0,
                builder: (context, index) {
                  ComicModel comic = state.comics[index];
                  return MarvelComicCard(comic: comic);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
