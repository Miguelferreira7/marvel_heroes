// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarvelState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMoreCharacters => throw _privateConstructorUsedError;
  CharactersResponseModel? get characters => throw _privateConstructorUsedError;
  List<ComicModel> get comics => throw _privateConstructorUsedError;
  MarvelApiExceptions? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarvelStateCopyWith<MarvelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelStateCopyWith<$Res> {
  factory $MarvelStateCopyWith(
          MarvelState value, $Res Function(MarvelState) then) =
      _$MarvelStateCopyWithImpl<$Res, MarvelState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMoreCharacters,
      CharactersResponseModel? characters,
      List<ComicModel> comics,
      MarvelApiExceptions? exception});

  $MarvelApiExceptionsCopyWith<$Res>? get exception;
}

/// @nodoc
class _$MarvelStateCopyWithImpl<$Res, $Val extends MarvelState>
    implements $MarvelStateCopyWith<$Res> {
  _$MarvelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMoreCharacters = null,
    Object? characters = freezed,
    Object? comics = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMoreCharacters: null == isLoadingMoreCharacters
          ? _value.isLoadingMoreCharacters
          : isLoadingMoreCharacters // ignore: cast_nullable_to_non_nullable
              as bool,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersResponseModel?,
      comics: null == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<ComicModel>,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as MarvelApiExceptions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarvelApiExceptionsCopyWith<$Res>? get exception {
    if (_value.exception == null) {
      return null;
    }

    return $MarvelApiExceptionsCopyWith<$Res>(_value.exception!, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicsStateImplCopyWith<$Res>
    implements $MarvelStateCopyWith<$Res> {
  factory _$$ComicsStateImplCopyWith(
          _$ComicsStateImpl value, $Res Function(_$ComicsStateImpl) then) =
      __$$ComicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMoreCharacters,
      CharactersResponseModel? characters,
      List<ComicModel> comics,
      MarvelApiExceptions? exception});

  @override
  $MarvelApiExceptionsCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$ComicsStateImplCopyWithImpl<$Res>
    extends _$MarvelStateCopyWithImpl<$Res, _$ComicsStateImpl>
    implements _$$ComicsStateImplCopyWith<$Res> {
  __$$ComicsStateImplCopyWithImpl(
      _$ComicsStateImpl _value, $Res Function(_$ComicsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMoreCharacters = null,
    Object? characters = freezed,
    Object? comics = null,
    Object? exception = freezed,
  }) {
    return _then(_$ComicsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMoreCharacters: null == isLoadingMoreCharacters
          ? _value.isLoadingMoreCharacters
          : isLoadingMoreCharacters // ignore: cast_nullable_to_non_nullable
              as bool,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersResponseModel?,
      comics: null == comics
          ? _value._comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<ComicModel>,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as MarvelApiExceptions?,
    ));
  }
}

/// @nodoc

class _$ComicsStateImpl implements _ComicsState {
  const _$ComicsStateImpl(
      {required this.isLoading,
      required this.isLoadingMoreCharacters,
      this.characters = null,
      final List<ComicModel> comics = const [],
      this.exception})
      : _comics = comics;

  @override
  final bool isLoading;
  @override
  final bool isLoadingMoreCharacters;
  @override
  @JsonKey()
  final CharactersResponseModel? characters;
  final List<ComicModel> _comics;
  @override
  @JsonKey()
  List<ComicModel> get comics {
    if (_comics is EqualUnmodifiableListView) return _comics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comics);
  }

  @override
  final MarvelApiExceptions? exception;

  @override
  String toString() {
    return 'MarvelState(isLoading: $isLoading, isLoadingMoreCharacters: $isLoadingMoreCharacters, characters: $characters, comics: $comics, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.isLoadingMoreCharacters, isLoadingMoreCharacters) ||
                other.isLoadingMoreCharacters == isLoadingMoreCharacters) &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            const DeepCollectionEquality().equals(other._comics, _comics) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingMoreCharacters,
      characters,
      const DeepCollectionEquality().hash(_comics),
      exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicsStateImplCopyWith<_$ComicsStateImpl> get copyWith =>
      __$$ComicsStateImplCopyWithImpl<_$ComicsStateImpl>(this, _$identity);
}

abstract class _ComicsState implements MarvelState {
  const factory _ComicsState(
      {required final bool isLoading,
      required final bool isLoadingMoreCharacters,
      final CharactersResponseModel? characters,
      final List<ComicModel> comics,
      final MarvelApiExceptions? exception}) = _$ComicsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMoreCharacters;
  @override
  CharactersResponseModel? get characters;
  @override
  List<ComicModel> get comics;
  @override
  MarvelApiExceptions? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ComicsStateImplCopyWith<_$ComicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
