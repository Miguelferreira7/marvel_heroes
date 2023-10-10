// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarvelApiExceptions {
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsExceptions value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostsExceptions value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsExceptions value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarvelApiExceptionsCopyWith<MarvelApiExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelApiExceptionsCopyWith<$Res> {
  factory $MarvelApiExceptionsCopyWith(
          MarvelApiExceptions value, $Res Function(MarvelApiExceptions) then) =
      _$MarvelApiExceptionsCopyWithImpl<$Res, MarvelApiExceptions>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$MarvelApiExceptionsCopyWithImpl<$Res, $Val extends MarvelApiExceptions>
    implements $MarvelApiExceptionsCopyWith<$Res> {
  _$MarvelApiExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsExceptionsImplCopyWith<$Res>
    implements $MarvelApiExceptionsCopyWith<$Res> {
  factory _$$PostsExceptionsImplCopyWith(_$PostsExceptionsImpl value,
          $Res Function(_$PostsExceptionsImpl) then) =
      __$$PostsExceptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PostsExceptionsImplCopyWithImpl<$Res>
    extends _$MarvelApiExceptionsCopyWithImpl<$Res, _$PostsExceptionsImpl>
    implements _$$PostsExceptionsImplCopyWith<$Res> {
  __$$PostsExceptionsImplCopyWithImpl(
      _$PostsExceptionsImpl _value, $Res Function(_$PostsExceptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PostsExceptionsImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostsExceptionsImpl implements _PostsExceptions {
  _$PostsExceptionsImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MarvelApiExceptions.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsExceptionsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsExceptionsImplCopyWith<_$PostsExceptionsImpl> get copyWith =>
      __$$PostsExceptionsImplCopyWithImpl<_$PostsExceptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) serverError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? serverError,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsExceptions value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostsExceptions value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsExceptions value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _PostsExceptions implements MarvelApiExceptions {
  factory _PostsExceptions(final String error) = _$PostsExceptionsImpl;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$PostsExceptionsImplCopyWith<_$PostsExceptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
