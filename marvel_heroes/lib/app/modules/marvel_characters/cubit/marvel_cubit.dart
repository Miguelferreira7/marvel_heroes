import 'package:bloc/bloc.dart';
import 'package:marvel_heroes/app/core/exceptions/marvel_exceptions.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/cubit/marvel_actions.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/characters_response_model.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/cubit/marvel_state.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/service/marvel_service.dart';
import '../models/character/character_model.dart';
import '../models/comics/comic_model.dart';

class MarvelCubit extends Cubit<MarvelState> implements MarvelCubitActions {
  final MarvelService _marvelService;

  MarvelCubit(this._marvelService) : super(MarvelState.initialState());

  @override
  Future<void> getCharacters() async {
    try {
      emit(MarvelState.isLoading(true));
      final CharactersResponseModel characters =
          await _marvelService.getAllCharacters(0);
      emit(MarvelState.getAllCharactersResult(characters));
    } on MarvelApiExceptions catch (e) {
      emit(MarvelState.error(e));
    }
  }

  @override
  Future<void> getMoreCharacters(
      int offset, List<CharacterModel> actualList) async {
    final CharactersResponseModel characters =
        await _marvelService.getAllCharacters(offset);

    actualList.addAll(characters.data!.characters!.toList());
    characters.data!.characters = actualList;

    emit(MarvelState.getAllCharactersResult(characters));
  }

  @override
  Future<void> getComicsFromCharacter(int characterId) async {
    try {
      emit(MarvelState.isLoading(true));
      final List<ComicModel> comics =
          await _marvelService.getCharacterComics(characterId);
      emit(MarvelState.comicsResult(comics));
    } on MarvelApiExceptions catch (e) {
      emit(MarvelState.error(e));
    }
  }
}
