import 'dart:convert';
import 'package:http/http.dart';
import 'package:marvel_heroes/app/core/consts/exception_consts.dart';
import 'package:marvel_heroes/app/core/exceptions/marvel_exceptions.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/characters_response_model.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/comics/comics_response_model.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/service/service.dart';
import '../models/comics/comic_model.dart';
import 'imarvel_service.dart';

class MarvelService extends Service implements IMarvelService {
  static const String _urlBase = "/v1/public";
  final Client client;

  MarvelService(this.client) : super(http: client);

  @override
  Future<CharactersResponseModel> getAllCharacters(int pagination) async {
    try {
      String url = "$_urlBase/characters";

      final response = await request(
        url,
        Service.HTTP_GET,
        newParams: {"offset": pagination},
      );

      return CharactersResponseModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw MarvelApiExceptions.serverError(
          ExceptionConsts.getCharactersErrorMessage);
    }
  }

  @override
  Future<List<ComicModel>> getCharacterComics(int characterId) async {
    try {
      final response = await request(
          "$_urlBase/characters/$characterId/comics", Service.HTTP_GET);

      ComicsResponseModel comicResponse =
          ComicsResponseModel.fromJson(jsonDecode(response.body));

      return comicResponse.data!.comics;
    } catch (e) {
      throw MarvelApiExceptions.serverError(
          ExceptionConsts.getCharacterComicsErrorMessage);
    }
  }
}
