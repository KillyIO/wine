// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'default_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DefaultCoverTearOff {
  const _$DefaultCoverTearOff();

  _DefaultCover call({required String key, required CoverURL url}) {
    return _DefaultCover(
      key: key,
      url: url,
    );
  }
}

/// @nodoc
const $DefaultCover = _$DefaultCoverTearOff();

/// @nodoc
mixin _$DefaultCover {
  String get key => throw _privateConstructorUsedError;
  CoverURL get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultCoverCopyWith<DefaultCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCoverCopyWith<$Res> {
  factory $DefaultCoverCopyWith(
          DefaultCover value, $Res Function(DefaultCover) then) =
      _$DefaultCoverCopyWithImpl<$Res>;
  $Res call({String key, CoverURL url});
}

/// @nodoc
class _$DefaultCoverCopyWithImpl<$Res> implements $DefaultCoverCopyWith<$Res> {
  _$DefaultCoverCopyWithImpl(this._value, this._then);

  final DefaultCover _value;
  // ignore: unused_field
  final $Res Function(DefaultCover) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as CoverURL,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCoverCopyWith<$Res>
    implements $DefaultCoverCopyWith<$Res> {
  factory _$DefaultCoverCopyWith(
          _DefaultCover value, $Res Function(_DefaultCover) then) =
      __$DefaultCoverCopyWithImpl<$Res>;
  @override
  $Res call({String key, CoverURL url});
}

/// @nodoc
class __$DefaultCoverCopyWithImpl<$Res> extends _$DefaultCoverCopyWithImpl<$Res>
    implements _$DefaultCoverCopyWith<$Res> {
  __$DefaultCoverCopyWithImpl(
      _DefaultCover _value, $Res Function(_DefaultCover) _then)
      : super(_value, (v) => _then(v as _DefaultCover));

  @override
  _DefaultCover get _value => super._value as _DefaultCover;

  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
  }) {
    return _then(_DefaultCover(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as CoverURL,
    ));
  }
}

/// @nodoc

class _$_DefaultCover implements _DefaultCover {
  _$_DefaultCover({required this.key, required this.url});

  @override
  final String key;
  @override
  final CoverURL url;

  @override
  String toString() {
    return 'DefaultCover(key: $key, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DefaultCover &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$DefaultCoverCopyWith<_DefaultCover> get copyWith =>
      __$DefaultCoverCopyWithImpl<_DefaultCover>(this, _$identity);
}

abstract class _DefaultCover implements DefaultCover {
  factory _DefaultCover({required String key, required CoverURL url}) =
      _$_DefaultCover;

  @override
  String get key;
  @override
  CoverURL get url;
  @override
  @JsonKey(ignore: true)
  _$DefaultCoverCopyWith<_DefaultCover> get copyWith =>
      throw _privateConstructorUsedError;
}
