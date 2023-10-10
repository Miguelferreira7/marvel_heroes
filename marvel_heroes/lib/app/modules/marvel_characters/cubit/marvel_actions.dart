import '../models/character/character_model.dart';

abstract class MarvelCubitActions {
  Future<void> getCharacters();
  Future<void> getMoreCharacters(int offset, List<CharacterModel> oldList);
  Future<void> getComicsFromCharacter(int characterId);
}