// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chapter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChapterDTO _$ChapterDTOFromJson(Map<String, dynamic> json) {
  return _ChapterDTO.fromJson(json);
}

/// @nodoc
class _$ChapterDTOTearOff {
  const _$ChapterDTOTearOff();

  _ChapterDTO call(
      {required String authorUID,
      required String body,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required String licence,
      required int likesCount,
      required String? previousChapterUID,
      required String title,
      required String treeUID,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) {
    return _ChapterDTO(
      authorUID: authorUID,
      body: body,
      bookmarksCount: bookmarksCount,
      coverURL: coverURL,
      genres: genres,
      index: index,
      isNSFW: isNSFW,
      isPublished: isPublished,
      language: language,
      licence: licence,
      likesCount: likesCount,
      previousChapterUID: previousChapterUID,
      title: title,
      treeUID: treeUID,
      uid: uid,
      updatedAt: updatedAt,
      viewsCount: viewsCount,
    );
  }

  ChapterDTO fromJson(Map<String, Object?> json) {
    return ChapterDTO.fromJson(json);
  }
}

/// @nodoc
const $ChapterDTO = _$ChapterDTOTearOff();

/// @nodoc
mixin _$ChapterDTO {
  String get authorUID => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  String get coverURL => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get licence => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  String? get previousChapterUID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get treeUID => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get updatedAt => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterDTOCopyWith<ChapterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDTOCopyWith<$Res> {
  factory $ChapterDTOCopyWith(
          ChapterDTO value, $Res Function(ChapterDTO) then) =
      _$ChapterDTOCopyWithImpl<$Res>;
  $Res call(
      {String authorUID,
      String body,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      String language,
      String licence,
      int likesCount,
      String? previousChapterUID,
      String title,
      String treeUID,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class _$ChapterDTOCopyWithImpl<$Res> implements $ChapterDTOCopyWith<$Res> {
  _$ChapterDTOCopyWithImpl(this._value, this._then);

  final ChapterDTO _value;
  // ignore: unused_field
  final $Res Function(ChapterDTO) _then;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? body = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? index = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? licence = freezed,
    Object? likesCount = freezed,
    Object? previousChapterUID = freezed,
    Object? title = freezed,
    Object? treeUID = freezed,
    Object? uid = freezed,
    Object? updatedAt = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
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
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousChapterUID: previousChapterUID == freezed
          ? _value.previousChapterUID
          : previousChapterUID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      treeUID: treeUID == freezed
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChapterDTOCopyWith<$Res> implements $ChapterDTOCopyWith<$Res> {
  factory _$ChapterDTOCopyWith(
          _ChapterDTO value, $Res Function(_ChapterDTO) then) =
      __$ChapterDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authorUID,
      String body,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      String language,
      String licence,
      int likesCount,
      String? previousChapterUID,
      String title,
      String treeUID,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class __$ChapterDTOCopyWithImpl<$Res> extends _$ChapterDTOCopyWithImpl<$Res>
    implements _$ChapterDTOCopyWith<$Res> {
  __$ChapterDTOCopyWithImpl(
      _ChapterDTO _value, $Res Function(_ChapterDTO) _then)
      : super(_value, (v) => _then(v as _ChapterDTO));

  @override
  _ChapterDTO get _value => super._value as _ChapterDTO;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? body = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? index = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? licence = freezed,
    Object? likesCount = freezed,
    Object? previousChapterUID = freezed,
    Object? title = freezed,
    Object? treeUID = freezed,
    Object? uid = freezed,
    Object? updatedAt = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_ChapterDTO(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
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
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousChapterUID: previousChapterUID == freezed
          ? _value.previousChapterUID
          : previousChapterUID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      treeUID: treeUID == freezed
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterDTO implements _ChapterDTO {
  _$_ChapterDTO(
      {required this.authorUID,
      required this.body,
      required this.bookmarksCount,
      required this.coverURL,
      required this.genres,
      required this.index,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.licence,
      required this.likesCount,
      required this.previousChapterUID,
      required this.title,
      required this.treeUID,
      required this.uid,
      @ServerTimestampConverter() required this.updatedAt,
      required this.viewsCount});

  factory _$_ChapterDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterDTOFromJson(json);

  @override
  final String authorUID;
  @override
  final String body;
  @override
  final int bookmarksCount;
  @override
  final String coverURL;
  @override
  final List<String> genres;
  @override
  final int index;
  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final String language;
  @override
  final String licence;
  @override
  final int likesCount;
  @override
  final String? previousChapterUID;
  @override
  final String title;
  @override
  final String treeUID;
  @override
  final String uid;
  @override
  @ServerTimestampConverter()
  final FieldValue updatedAt;
  @override
  final int viewsCount;

  @override
  String toString() {
    return 'ChapterDTO(authorUID: $authorUID, body: $body, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, index: $index, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, licence: $licence, likesCount: $likesCount, previousChapterUID: $previousChapterUID, title: $title, treeUID: $treeUID, uid: $uid, updatedAt: $updatedAt, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChapterDTO &&
            const DeepCollectionEquality().equals(other.authorUID, authorUID) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.bookmarksCount, bookmarksCount) &&
            const DeepCollectionEquality().equals(other.coverURL, coverURL) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.isNSFW, isNSFW) &&
            const DeepCollectionEquality()
                .equals(other.isPublished, isPublished) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.licence, licence) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality()
                .equals(other.previousChapterUID, previousChapterUID) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.treeUID, treeUID) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.viewsCount, viewsCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorUID),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(bookmarksCount),
      const DeepCollectionEquality().hash(coverURL),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(isNSFW),
      const DeepCollectionEquality().hash(isPublished),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(licence),
      const DeepCollectionEquality().hash(likesCount),
      const DeepCollectionEquality().hash(previousChapterUID),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(treeUID),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(viewsCount));

  @JsonKey(ignore: true)
  @override
  _$ChapterDTOCopyWith<_ChapterDTO> get copyWith =>
      __$ChapterDTOCopyWithImpl<_ChapterDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterDTOToJson(this);
  }
}

abstract class _ChapterDTO implements ChapterDTO {
  factory _ChapterDTO(
      {required String authorUID,
      required String body,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required String licence,
      required int likesCount,
      required String? previousChapterUID,
      required String title,
      required String treeUID,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) = _$_ChapterDTO;

  factory _ChapterDTO.fromJson(Map<String, dynamic> json) =
      _$_ChapterDTO.fromJson;

  @override
  String get authorUID;
  @override
  String get body;
  @override
  int get bookmarksCount;
  @override
  String get coverURL;
  @override
  List<String> get genres;
  @override
  int get index;
  @override
  bool get isNSFW;
  @override
  bool get isPublished;
  @override
  String get language;
  @override
  String get licence;
  @override
  int get likesCount;
  @override
  String? get previousChapterUID;
  @override
  String get title;
  @override
  String get treeUID;
  @override
  String get uid;
  @override
  @ServerTimestampConverter()
  FieldValue get updatedAt;
  @override
  int get viewsCount;
  @override
  @JsonKey(ignore: true)
  _$ChapterDTOCopyWith<_ChapterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
