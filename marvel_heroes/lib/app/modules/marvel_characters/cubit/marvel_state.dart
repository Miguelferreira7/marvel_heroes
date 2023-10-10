import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_heroes/app/core/exceptions/marvel_exceptions.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/characters_response_model.dart';
import '../models/comics/comic_model.dart';

part 'marvel_state.freezed.dart';

@freezed
abstract class MarvelState with _$MarvelState {
  const factory MarvelState({required bool isLoading, @Default(null) CharactersResponseModel? characters, @Default([]) List<ComicModel> comics,  MarvelApiExceptions? exception}) = _ComicsState;

  factory MarvelState.initialState() => const MarvelState(isLoading: false, characters: null, comics: []);

  factory MarvelState.isLoading(bool isLoading) => MarvelState(isLoading: isLoading, characters: null);

  factory MarvelState.getAllCharactersResult(CharactersResponseModel? characters) => MarvelState(isLoading: false, characters: characters);

  factory MarvelState.comicsResult(List<ComicModel> comics) => MarvelState(isLoading: false,  comics: comics);

  factory MarvelState.error(MarvelApiExceptions exception) => MarvelState(isLoading: false,  exception: exception);
}
