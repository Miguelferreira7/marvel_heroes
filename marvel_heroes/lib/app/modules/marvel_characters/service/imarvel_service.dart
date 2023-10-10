import 'package:marvel_heroes/app/modules/marvel_characters/models/character/characters_response_model.dart';
import '../models/comics/comic_model.dart';

abstract class IMarvelService {
  Future<CharactersResponseModel> getAllCharacters(int pagination);
  Future<List<ComicModel>> getCharacterComics(int id);
}