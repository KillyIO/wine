// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

// ignore: unused_element
  _Series call(
      {@required UniqueID authorUID,
      @required CoverURL coverURL,
      @required Genre genre,
      @required Genre genreOptional,
      @required bool isNSFW,
      @required Language language,
      @required Subtitle subtitle,
      @required Summary summary,
      @required Title title,
      @required UniqueID uid}) {
    return _Series(
      authorUID: authorUID,
      coverURL: coverURL,
      genre: genre,
      genreOptional: genreOptional,
      isNSFW: isNSFW,
      language: language,
      subtitle: subtitle,
      summary: summary,
      title: title,
      uid: uid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  UniqueID get authorUID;
  CoverURL get coverURL;
  Genre get genre;
  Genre get genreOptional;
  bool get isNSFW;
  Language get language;
  Subtitle get subtitle;
  Summary get summary;
  Title get title;
  UniqueID get uid;

  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call(
      {UniqueID authorUID,
      CoverURL coverURL,
      Genre genre,
      Genre genreOptional,
      bool isNSFW,
      Language language,
      Subtitle subtitle,
      Summary summary,
      Title title,
      UniqueID uid});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object authorUID = freezed,
    Object coverURL = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object isNSFW = freezed,
    Object language = freezed,
    Object subtitle = freezed,
    Object summary = freezed,
    Object title = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID:
          authorUID == freezed ? _value.authorUID : authorUID as UniqueID,
      coverURL: coverURL == freezed ? _value.coverURL : coverURL as CoverURL,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      language: language == freezed ? _value.language : language as Language,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as Subtitle,
      summary: summary == freezed ? _value.summary : summary as Summary,
      title: title == freezed ? _value.title : title as Title,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
    ));
  }
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID authorUID,
      CoverURL coverURL,
      Genre genre,
      Genre genreOptional,
      bool isNSFW,
      Language language,
      Subtitle subtitle,
      Summary summary,
      Title title,
      UniqueID uid});
}

/// @nodoc
class __$SeriesCopyWithImpl<$Res> extends _$SeriesCopyWithImpl<$Res>
    implements _$SeriesCopyWith<$Res> {
  __$SeriesCopyWithImpl(_Series _value, $Res Function(_Series) _then)
      : super(_value, (v) => _then(v as _Series));

  @override
  _Series get _value => super._value as _Series;

  @override
  $Res call({
    Object authorUID = freezed,
    Object coverURL = freezed,
    Object genre = freezed,
    Object genreOptional = freezed,
    Object isNSFW = freezed,
    Object language = freezed,
    Object subtitle = freezed,
    Object summary = freezed,
    Object title = freezed,
    Object uid = freezed,
  }) {
    return _then(_Series(
      authorUID:
          authorUID == freezed ? _value.authorUID : authorUID as UniqueID,
      coverURL: coverURL == freezed ? _value.coverURL : coverURL as CoverURL,
      genre: genre == freezed ? _value.genre : genre as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional as Genre,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      language: language == freezed ? _value.language : language as Language,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as Subtitle,
      summary: summary == freezed ? _value.summary : summary as Summary,
      title: title == freezed ? _value.title : title as Title,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
    ));
  }
}

/// @nodoc
class _$_Series implements _Series {
  _$_Series(
      {@required this.authorUID,
      @required this.coverURL,
      @required this.genre,
      @required this.genreOptional,
      @required this.isNSFW,
      @required this.language,
      @required this.subtitle,
      @required this.summary,
      @required this.title,
      @required this.uid})
      : assert(authorUID != null),
        assert(coverURL != null),
        assert(genre != null),
        assert(genreOptional != null),
        assert(isNSFW != null),
        assert(language != null),
        assert(subtitle != null),
        assert(summary != null),
        assert(title != null),
        assert(uid != null);

  @override
  final UniqueID authorUID;
  @override
  final CoverURL coverURL;
  @override
  final Genre genre;
  @override
  final Genre genreOptional;
  @override
  final bool isNSFW;
  @override
  final Language language;
  @override
  final Subtitle subtitle;
  @override
  final Summary summary;
  @override
  final Title title;
  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'Series(authorUID: $authorUID, coverURL: $coverURL, genre: $genre, genreOptional: $genreOptional, isNSFW: $isNSFW, language: $language, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
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
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);
}

abstract class _Series implements Series {
  factory _Series(
      {@required UniqueID authorUID,
      @required CoverURL coverURL,
      @required Genre genre,
      @required Genre genreOptional,
      @required bool isNSFW,
      @required Language language,
      @required Subtitle subtitle,
      @required Summary summary,
      @required Title title,
      @required UniqueID uid}) = _$_Series;

  @override
  UniqueID get authorUID;
  @override
  CoverURL get coverURL;
  @override
  Genre get genre;
  @override
  Genre get genreOptional;
  @override
  bool get isNSFW;
  @override
  Language get language;
  @override
  Subtitle get subtitle;
  @override
  Summary get summary;
  @override
  Title get title;
  @override
  UniqueID get uid;
  @override
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith;
}
