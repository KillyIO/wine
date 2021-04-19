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
      {@required String authorUID,
      @required String coverURL,
      @required String genre,
      String genreOptional,
      @required bool isNSFW,
      @required String language,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      String subtitle,
      @required String summary,
      @required String title,
      @JsonKey(ignore: true) String uid}) {
    return _SeriesDTO(
      authorUID: authorUID,
      coverURL: coverURL,
      genre: genre,
      genreOptional: genreOptional,
      isNSFW: isNSFW,
      language: language,
      serverTimeStamp: serverTimeStamp,
      subtitle: subtitle,
      summary: summary,
      title: title,
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
  String get authorUID;
  String get coverURL;
  String get genre;
  String get genreOptional;
  bool get isNSFW;
  String get language;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  String get subtitle;
  String get summary;
  String get title;
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
      {String authorUID,
      String coverURL,
      String genre,
      String genreOptional,
      bool isNSFW,
      String language,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String subtitle,
      String summary,
      String title,
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
    Object authorUID = freezed,
    Object coverURL = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object isNSFW = freezed,
    Object language = freezed,
    Object serverTimeStamp = freezed,
    Object subtitle = freezed,
    Object summary = freezed,
    Object title = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID: authorUID == freezed ? _value.authorUID : authorUID as String,
      coverURL: coverURL == freezed ? _value.coverURL : coverURL as String,
      genre: genre == freezed ? _value.genre : genre as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      language: language == freezed ? _value.language : language as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      summary: summary == freezed ? _value.summary : summary as String,
      title: title == freezed ? _value.title : title as String,
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
      {String authorUID,
      String coverURL,
      String genre,
      String genreOptional,
      bool isNSFW,
      String language,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String subtitle,
      String summary,
      String title,
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
    Object authorUID = freezed,
    Object coverURL = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object isNSFW = freezed,
    Object language = freezed,
    Object serverTimeStamp = freezed,
    Object subtitle = freezed,
    Object summary = freezed,
    Object title = freezed,
    Object uid = freezed,
  }) {
    return _then(_SeriesDTO(
      authorUID: authorUID == freezed ? _value.authorUID : authorUID as String,
      coverURL: coverURL == freezed ? _value.coverURL : coverURL as String,
      genre: genre == freezed ? _value.genre : genre as String,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as String,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      language: language == freezed ? _value.language : language as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      summary: summary == freezed ? _value.summary : summary as String,
      title: title == freezed ? _value.title : title as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SeriesDTO implements _SeriesDTO {
  _$_SeriesDTO(
      {@required this.authorUID,
      @required this.coverURL,
      @required this.genre,
      this.genreOptional,
      @required this.isNSFW,
      @required this.language,
      @required @ServerTimestampConverter() this.serverTimeStamp,
      this.subtitle,
      @required this.summary,
      @required this.title,
      @JsonKey(ignore: true) this.uid})
      : assert(authorUID != null),
        assert(coverURL != null),
        assert(genre != null),
        assert(isNSFW != null),
        assert(language != null),
        assert(serverTimeStamp != null),
        assert(summary != null),
        assert(title != null);

  factory _$_SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SeriesDTOFromJson(json);

  @override
  final String authorUID;
  @override
  final String coverURL;
  @override
  final String genre;
  @override
  final String genreOptional;
  @override
  final bool isNSFW;
  @override
  final String language;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;
  @override
  final String subtitle;
  @override
  final String summary;
  @override
  final String title;
  @override
  @JsonKey(ignore: true)
  final String uid;

  @override
  String toString() {
    return 'SeriesDTO(authorUID: $authorUID, coverURL: $coverURL, genre: $genre, genreOptional: $genreOptional, isNSFW: $isNSFW, language: $language, serverTimeStamp: $serverTimeStamp, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDTO &&
            (identical(other.authorUID, authorUID) ||
                const DeepCollectionEquality()
                    .equals(other.authorUID, authorUID)) &&
            (identical(other.coverURL, coverURL) ||
                const DeepCollectionEquality()
                    .equals(other.coverURL, coverURL)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.genreOptional, genreOptional) ||
                const DeepCollectionEquality()
                    .equals(other.genreOptional, genreOptional)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authorUID) ^
      const DeepCollectionEquality().hash(coverURL) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(title) ^
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
      {@required String authorUID,
      @required String coverURL,
      @required String genre,
      String genreOptional,
      @required bool isNSFW,
      @required String language,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      String subtitle,
      @required String summary,
      @required String title,
      @JsonKey(ignore: true) String uid}) = _$_SeriesDTO;

  factory _SeriesDTO.fromJson(Map<String, dynamic> json) =
      _$_SeriesDTO.fromJson;

  @override
  String get authorUID;
  @override
  String get coverURL;
  @override
  String get genre;
  @override
  String get genreOptional;
  @override
  bool get isNSFW;
  @override
  String get language;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  String get subtitle;
  @override
  String get summary;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$SeriesDTOCopyWith<_SeriesDTO> get copyWith;
}
