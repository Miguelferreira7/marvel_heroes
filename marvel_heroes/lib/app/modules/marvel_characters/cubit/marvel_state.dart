import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_heroes/app/core/exceptions/marvel_exceptions.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/characters_response_model.dart';
import '../models/comics/comic_model.dart';

part 'marvel_state.freezed.dart';

@freezed
abstract class MarvelState with _$MarvelState {
  const factory MarvelState({required bool isLoading, required bool isLoadingMoreCharacters, @Default(null) CharactersResponseModel? characters, @Default([]) List<ComicModel> comics,  MarvelApiExceptions? exception}) = _ComicsState;

  factory MarvelState.initialState() => const MarvelState(isLoading: false, isLoadingMoreCharacters: false, characters: null, comics: []);

  factory MarvelState.isLoading(bool isLoading) => MarvelState(isLoading: isLoading, isLoadingMoreCharacters: false, characters: null);

  factory MarvelState.isLoadingMoreCharacters(bool isLoadingMore) => MarvelState(isLoading: isLoadingMore, isLoadingMoreCharacters: false);

  factory MarvelState.getAllCharactersResult(CharactersResponseModel? characters) => MarvelState(isLoading: false, isLoadingMoreCharacters: false, characters: characters);

  factory MarvelState.comicsResult(List<ComicModel> comics) => MarvelState(isLoading: false, isLoadingMoreCharacters: false,  comics: comics);

  factory MarvelState.error(MarvelApiExceptions exception) => MarvelState(isLoading: false, isLoadingMoreCharacters: false,  exception: exception);
}
