import 'package:freezed_annotation/freezed_annotation.dart';

part 'marvel_exceptions.freezed.dart';

@freezed
abstract class MarvelApiExceptions with _$MarvelApiExceptions implements Exception{
  factory MarvelApiExceptions.serverError(String error) = _PostsExceptions;
}