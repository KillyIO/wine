// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$DefaultCoverCopyWithImpl<$Res, DefaultCover>;
  @useResult
  $Res call({String key, CoverURL url});
}

/// @nodoc
class _$DefaultCoverCopyWithImpl<$Res, $Val extends DefaultCover>
    implements $DefaultCoverCopyWith<$Res> {
  _$DefaultCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as CoverURL,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultCoverImplCopyWith<$Res>
    implements $DefaultCoverCopyWith<$Res> {
  factory _$$DefaultCoverImplCopyWith(
          _$DefaultCoverImpl value, $Res Function(_$DefaultCoverImpl) then) =
      __$$DefaultCoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, CoverURL url});
}

/// @nodoc
class __$$DefaultCoverImplCopyWithImpl<$Res>
    extends _$DefaultCoverCopyWithImpl<$Res, _$DefaultCoverImpl>
    implements _$$DefaultCoverImplCopyWith<$Res> {
  __$$DefaultCoverImplCopyWithImpl(
      _$DefaultCoverImpl _value, $Res Function(_$DefaultCoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_$DefaultCoverImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as CoverURL,
    ));
  }
}

/// @nodoc

class _$DefaultCoverImpl implements _DefaultCover {
  _$DefaultCoverImpl({required this.key, required this.url});

  @override
  final String key;
  @override
  final CoverURL url;

  @override
  String toString() {
    return 'DefaultCover(key: $key, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCoverImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultCoverImplCopyWith<_$DefaultCoverImpl> get copyWith =>
      __$$DefaultCoverImplCopyWithImpl<_$DefaultCoverImpl>(this, _$identity);
}

abstract class _DefaultCover implements DefaultCover {
  factory _DefaultCover(
      {required final String key,
      required final CoverURL url}) = _$DefaultCoverImpl;

  @override
  String get key;
  @override
  CoverURL get url;
  @override
  @JsonKey(ignore: true)
  _$$DefaultCoverImplCopyWith<_$DefaultCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
