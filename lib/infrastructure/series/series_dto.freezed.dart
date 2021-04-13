// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SeriesDTO _$SeriesDTOFromJson(Map<String, dynamic> json) {
  return _SeriesDTO.fromJson(json);
}

/// @nodoc
class _$SeriesDTOTearOff {
  const _$SeriesDTOTearOff();

// ignore: unused_element
  _SeriesDTO call(
      {@required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid}) {
    return _SeriesDTO(
      serverTimeStamp: serverTimeStamp,
      uid: uid,
    );
  }

// ignore: unused_element
  SeriesDTO fromJson(Map<String, Object> json) {
    return SeriesDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SeriesDTO = _$SeriesDTOTearOff();

/// @nodoc
mixin _$SeriesDTO {
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @JsonKey(ignore: true)
  String get uid;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SeriesDTOCopyWith<SeriesDTO> get copyWith;
}

/// @nodoc
abstract class $SeriesDTOCopyWith<$Res> {
  factory $SeriesDTOCopyWith(SeriesDTO value, $Res Function(SeriesDTO) then) =
      _$SeriesDTOCopyWithImpl<$Res>;
  $Res call(
      {@ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid});
}

/// @nodoc
class _$SeriesDTOCopyWithImpl<$Res> implements $SeriesDTOCopyWith<$Res> {
  _$SeriesDTOCopyWithImpl(this._value, this._then);

  final SeriesDTO _value;
  // ignore: unused_field
  final $Res Function(SeriesDTO) _then;

  @override
  $Res call({
    Object serverTimeStamp = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
abstract class _$SeriesDTOCopyWith<$Res> implements $SeriesDTOCopyWith<$Res> {
  factory _$SeriesDTOCopyWith(
          _SeriesDTO value, $Res Function(_SeriesDTO) then) =
      __$SeriesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid});
}

/// @nodoc
class __$SeriesDTOCopyWithImpl<$Res> extends _$SeriesDTOCopyWithImpl<$Res>
    implements _$SeriesDTOCopyWith<$Res> {
  __$SeriesDTOCopyWithImpl(_SeriesDTO _value, $Res Function(_SeriesDTO) _then)
      : super(_value, (v) => _then(v as _SeriesDTO));

  @override
  _SeriesDTO get _value => super._value as _SeriesDTO;

  @override
  $Res call({
    Object serverTimeStamp = freezed,
    Object uid = freezed,
  }) {
    return _then(_SeriesDTO(
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SeriesDTO implements _SeriesDTO {
  _$_SeriesDTO(
      {@required @ServerTimestampConverter() this.serverTimeStamp,
      @JsonKey(ignore: true) this.uid})
      : assert(serverTimeStamp != null);

  factory _$_SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SeriesDTOFromJson(json);

  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  final String uid;

  @override
  String toString() {
    return 'SeriesDTO(serverTimeStamp: $serverTimeStamp, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDTO &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$SeriesDTOCopyWith<_SeriesDTO> get copyWith =>
      __$SeriesDTOCopyWithImpl<_SeriesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeriesDTOToJson(this);
  }
}

abstract class _SeriesDTO implements SeriesDTO {
  factory _SeriesDTO(
      {@required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid}) = _$_SeriesDTO;

  factory _SeriesDTO.fromJson(Map<String, dynamic> json) =
      _$_SeriesDTO.fromJson;

  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$SeriesDTOCopyWith<_SeriesDTO> get copyWith;
}
