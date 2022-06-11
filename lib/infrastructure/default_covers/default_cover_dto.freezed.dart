// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'default_cover_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultCoverDTO _$DefaultCoverDTOFromJson(Map<String, dynamic> json) {
  return _DefaultCoverDTO.fromJson(json);
}

/// @nodoc
mixin _$DefaultCoverDTO {
  String get key => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultCoverDTOCopyWith<DefaultCoverDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCoverDTOCopyWith<$Res> {
  factory $DefaultCoverDTOCopyWith(
          DefaultCoverDTO value, $Res Function(DefaultCoverDTO) then) =
      _$DefaultCoverDTOCopyWithImpl<$Res>;
  $Res call({String key, String url});
}

/// @nodoc
class _$DefaultCoverDTOCopyWithImpl<$Res>
    implements $DefaultCoverDTOCopyWith<$Res> {
  _$DefaultCoverDTOCopyWithImpl(this._value, this._then);

  final DefaultCoverDTO _value;
  // ignore: unused_field
  final $Res Function(DefaultCoverDTO) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DefaultCoverDTOCopyWith<$Res>
    implements $DefaultCoverDTOCopyWith<$Res> {
  factory _$$_DefaultCoverDTOCopyWith(
          _$_DefaultCoverDTO value, $Res Function(_$_DefaultCoverDTO) then) =
      __$$_DefaultCoverDTOCopyWithImpl<$Res>;
  @override
  $Res call({String key, String url});
}

/// @nodoc
class __$$_DefaultCoverDTOCopyWithImpl<$Res>
    extends _$DefaultCoverDTOCopyWithImpl<$Res>
    implements _$$_DefaultCoverDTOCopyWith<$Res> {
  __$$_DefaultCoverDTOCopyWithImpl(
      _$_DefaultCoverDTO _value, $Res Function(_$_DefaultCoverDTO) _then)
      : super(_value, (v) => _then(v as _$_DefaultCoverDTO));

  @override
  _$_DefaultCoverDTO get _value => super._value as _$_DefaultCoverDTO;

  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_DefaultCoverDTO(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultCoverDTO implements _DefaultCoverDTO {
  _$_DefaultCoverDTO({required this.key, required this.url});

  factory _$_DefaultCoverDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultCoverDTOFromJson(json);

  @override
  final String key;
  @override
  final String url;

  @override
  String toString() {
    return 'DefaultCoverDTO(key: $key, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultCoverDTO &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultCoverDTOCopyWith<_$_DefaultCoverDTO> get copyWith =>
      __$$_DefaultCoverDTOCopyWithImpl<_$_DefaultCoverDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultCoverDTOToJson(this);
  }
}

abstract class _DefaultCoverDTO implements DefaultCoverDTO {
  factory _DefaultCoverDTO(
      {required final String key,
      required final String url}) = _$_DefaultCoverDTO;

  factory _DefaultCoverDTO.fromJson(Map<String, dynamic> json) =
      _$_DefaultCoverDTO.fromJson;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultCoverDTOCopyWith<_$_DefaultCoverDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
