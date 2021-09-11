// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesDTO _$SeriesDTOFromJson(Map<String, dynamic> json) {
  return _SeriesDTO.fromJson(json);
}

/// @nodoc
class _$SeriesDTOTearOff {
  const _$SeriesDTOTearOff();

  _SeriesDTO call(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required int likesCount,
      @ServerTimestampConverter() required FieldValue serverTimeStamp,
      String? subtitle,
      required String summary,
      required String title,
      required String uid,
      required int viewsCount}) {
    return _SeriesDTO(
      authorUID: authorUID,
      bookmarksCount: bookmarksCount,
      coverURL: coverURL,
      genres: genres,
      isNSFW: isNSFW,
      isPublished: isPublished,
      language: language,
      likesCount: likesCount,
      serverTimeStamp: serverTimeStamp,
      subtitle: subtitle,
      summary: summary,
      title: title,
      uid: uid,
      viewsCount: viewsCount,
    );
  }

  SeriesDTO fromJson(Map<String, Object> json) {
    return SeriesDTO.fromJson(json);
  }
}

/// @nodoc
const $SeriesDTO = _$SeriesDTOTearOff();

/// @nodoc
mixin _$SeriesDTO {
  String get authorUID => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  String get coverURL => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesDTOCopyWith<SeriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDTOCopyWith<$Res> {
  factory $SeriesDTOCopyWith(SeriesDTO value, $Res Function(SeriesDTO) then) =
      _$SeriesDTOCopyWithImpl<$Res>;
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      bool isNSFW,
      bool isPublished,
      String language,
      int likesCount,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String? subtitle,
      String summary,
      String title,
      String uid,
      int viewsCount});
}

/// @nodoc
class _$SeriesDTOCopyWithImpl<$Res> implements $SeriesDTOCopyWith<$Res> {
  _$SeriesDTOCopyWithImpl(this._value, this._then);

  final SeriesDTO _value;
  // ignore: unused_field
  final $Res Function(SeriesDTO) _then;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? likesCount = freezed,
    Object? serverTimeStamp = freezed,
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
              as String,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      bool isNSFW,
      bool isPublished,
      String language,
      int likesCount,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String? subtitle,
      String summary,
      String title,
      String uid,
      int viewsCount});
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
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? likesCount = freezed,
    Object? serverTimeStamp = freezed,
    Object? subtitle = freezed,
    Object? summary = freezed,
    Object? title = freezed,
    Object? uid = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_SeriesDTO(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeriesDTO implements _SeriesDTO {
  _$_SeriesDTO(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required this.genres,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.likesCount,
      @ServerTimestampConverter() required this.serverTimeStamp,
      this.subtitle,
      required this.summary,
      required this.title,
      required this.uid,
      required this.viewsCount});

  factory _$_SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesDTOFromJson(json);

  @override
  final String authorUID;
  @override
  final int bookmarksCount;
  @override
  final String coverURL;
  @override
  final List<String> genres;
  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final String language;
  @override
  final int likesCount;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;
  @override
  final String? subtitle;
  @override
  final String summary;
  @override
  final String title;
  @override
  final String uid;
  @override
  final int viewsCount;

  @override
  String toString() {
    return 'SeriesDTO(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, likesCount: $likesCount, serverTimeStamp: $serverTimeStamp, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDTO &&
            (identical(other.authorUID, authorUID) ||
                const DeepCollectionEquality()
                    .equals(other.authorUID, authorUID)) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarksCount, bookmarksCount)) &&
            (identical(other.coverURL, coverURL) ||
                const DeepCollectionEquality()
                    .equals(other.coverURL, coverURL)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
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
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(isPublished) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(viewsCount);

  @JsonKey(ignore: true)
  @override
  _$SeriesDTOCopyWith<_SeriesDTO> get copyWith =>
      __$SeriesDTOCopyWithImpl<_SeriesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesDTOToJson(this);
  }
}

abstract class _SeriesDTO implements SeriesDTO {
  factory _SeriesDTO(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required int likesCount,
      @ServerTimestampConverter() required FieldValue serverTimeStamp,
      String? subtitle,
      required String summary,
      required String title,
      required String uid,
      required int viewsCount}) = _$_SeriesDTO;

  factory _SeriesDTO.fromJson(Map<String, dynamic> json) =
      _$_SeriesDTO.fromJson;

  @override
  String get authorUID => throw _privateConstructorUsedError;
  @override
  int get bookmarksCount => throw _privateConstructorUsedError;
  @override
  String get coverURL => throw _privateConstructorUsedError;
  @override
  List<String> get genres => throw _privateConstructorUsedError;
  @override
  bool get isNSFW => throw _privateConstructorUsedError;
  @override
  bool get isPublished => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get likesCount => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  int get viewsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesDTOCopyWith<_SeriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
