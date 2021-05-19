// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

  _Series call(
      {required UniqueID authorUID,
      required int bookmarksCount,
      required CoverURL coverURL,
      required Genre genre,
      Genre? genreOptional,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required int likesCount,
      Subtitle? subtitle,
      required Summary summary,
      required Title title,
      required UniqueID uid,
      required int viewsCount}) {
    return _Series(
      authorUID: authorUID,
      bookmarksCount: bookmarksCount,
      coverURL: coverURL,
      genre: genre,
      genreOptional: genreOptional,
      isNSFW: isNSFW,
      isPublished: isPublished,
      language: language,
      likesCount: likesCount,
      subtitle: subtitle,
      summary: summary,
      title: title,
      uid: uid,
      viewsCount: viewsCount,
    );
  }
}

/// @nodoc
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  UniqueID get authorUID => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  CoverURL get coverURL => throw _privateConstructorUsedError;
  Genre get genre => throw _privateConstructorUsedError;
  Genre? get genreOptional => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  Subtitle? get subtitle => throw _privateConstructorUsedError;
  Summary get summary => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  UniqueID get uid => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call(
      {UniqueID authorUID,
      int bookmarksCount,
      CoverURL coverURL,
      Genre genre,
      Genre? genreOptional,
      bool isNSFW,
      bool isPublished,
      Language language,
      int likesCount,
      Subtitle? subtitle,
      Summary summary,
      Title title,
      UniqueID uid,
      int viewsCount});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genre = freezed,
    Object? genreOptional = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? likesCount = freezed,
    Object? subtitle = freezed,
    Object? summary = freezed,
    Object? title = freezed,
    Object? uid = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional // ignore: cast_nullable_to_non_nullable
              as Genre?,
      isNSFW: isNSFW == freezed
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      int bookmarksCount,
      CoverURL coverURL,
      Genre genre,
      Genre? genreOptional,
      bool isNSFW,
      bool isPublished,
      Language language,
      int likesCount,
      Subtitle? subtitle,
      Summary summary,
      Title title,
      UniqueID uid,
      int viewsCount});
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
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genre = freezed,
    Object? genreOptional = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? likesCount = freezed,
    Object? subtitle = freezed,
    Object? summary = freezed,
    Object? title = freezed,
    Object? uid = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_Series(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre,
      genreOptional: genreOptional == freezed
          ? _value.genreOptional
          : genreOptional // ignore: cast_nullable_to_non_nullable
              as Genre?,
      isNSFW: isNSFW == freezed
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Series implements _Series {
  _$_Series(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required this.genre,
      this.genreOptional,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.likesCount,
      this.subtitle,
      required this.summary,
      required this.title,
      required this.uid,
      required this.viewsCount});

  @override
  final UniqueID authorUID;
  @override
  final int bookmarksCount;
  @override
  final CoverURL coverURL;
  @override
  final Genre genre;
  @override
  final Genre? genreOptional;
  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final Language language;
  @override
  final int likesCount;
  @override
  final Subtitle? subtitle;
  @override
  final Summary summary;
  @override
  final Title title;
  @override
  final UniqueID uid;
  @override
  final int viewsCount;

  @override
  String toString() {
    return 'Series(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genre: $genre, genreOptional: $genreOptional, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, likesCount: $likesCount, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
            (identical(other.authorUID, authorUID) ||
                const DeepCollectionEquality()
                    .equals(other.authorUID, authorUID)) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarksCount, bookmarksCount)) &&
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
            (identical(other.isPublished, isPublished) ||
                const DeepCollectionEquality()
                    .equals(other.isPublished, isPublished)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.viewsCount, viewsCount) ||
                const DeepCollectionEquality()
                    .equals(other.viewsCount, viewsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authorUID) ^
      const DeepCollectionEquality().hash(bookmarksCount) ^
      const DeepCollectionEquality().hash(coverURL) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(genreOptional) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(isPublished) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(viewsCount);

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);
}

abstract class _Series implements Series {
  factory _Series(
      {required UniqueID authorUID,
      required int bookmarksCount,
      required CoverURL coverURL,
      required Genre genre,
      Genre? genreOptional,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required int likesCount,
      Subtitle? subtitle,
      required Summary summary,
      required Title title,
      required UniqueID uid,
      required int viewsCount}) = _$_Series;

  @override
  UniqueID get authorUID => throw _privateConstructorUsedError;
  @override
  int get bookmarksCount => throw _privateConstructorUsedError;
  @override
  CoverURL get coverURL => throw _privateConstructorUsedError;
  @override
  Genre get genre => throw _privateConstructorUsedError;
  @override
  Genre? get genreOptional => throw _privateConstructorUsedError;
  @override
  bool get isNSFW => throw _privateConstructorUsedError;
  @override
  bool get isPublished => throw _privateConstructorUsedError;
  @override
  Language get language => throw _privateConstructorUsedError;
  @override
  int get likesCount => throw _privateConstructorUsedError;
  @override
  Subtitle? get subtitle => throw _privateConstructorUsedError;
  @override
  Summary get summary => throw _privateConstructorUsedError;
  @override
  Title get title => throw _privateConstructorUsedError;
  @override
  UniqueID get uid => throw _privateConstructorUsedError;
  @override
  int get viewsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith => throw _privateConstructorUsedError;
}
