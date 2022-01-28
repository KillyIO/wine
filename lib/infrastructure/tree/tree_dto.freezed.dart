// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tree_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TreeDTO _$TreeDTOFromJson(Map<String, dynamic> json) {
  return _TreeDTO.fromJson(json);
}

/// @nodoc
class _$TreeDTOTearOff {
  const _$TreeDTOTearOff();

  _TreeDTO call(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required int likesCount,
      String? subtitle,
      required String summary,
      required String title,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) {
    return _TreeDTO(
      authorUID: authorUID,
      bookmarksCount: bookmarksCount,
      coverURL: coverURL,
      genres: genres,
      isNSFW: isNSFW,
      isPublished: isPublished,
      language: language,
      likesCount: likesCount,
      subtitle: subtitle,
      summary: summary,
      title: title,
      uid: uid,
      updatedAt: updatedAt,
      viewsCount: viewsCount,
    );
  }

  TreeDTO fromJson(Map<String, Object?> json) {
    return TreeDTO.fromJson(json);
  }
}

/// @nodoc
const $TreeDTO = _$TreeDTOTearOff();

/// @nodoc
mixin _$TreeDTO {
  String get authorUID => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  String get coverURL => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get updatedAt => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeDTOCopyWith<TreeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDTOCopyWith<$Res> {
  factory $TreeDTOCopyWith(TreeDTO value, $Res Function(TreeDTO) then) =
      _$TreeDTOCopyWithImpl<$Res>;
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      bool isNSFW,
      bool isPublished,
      String language,
      int likesCount,
      String? subtitle,
      String summary,
      String title,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class _$TreeDTOCopyWithImpl<$Res> implements $TreeDTOCopyWith<$Res> {
  _$TreeDTOCopyWithImpl(this._value, this._then);

  final TreeDTO _value;
  // ignore: unused_field
  final $Res Function(TreeDTO) _then;

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
    Object? subtitle = freezed,
    Object? summary = freezed,
    Object? title = freezed,
    Object? uid = freezed,
    Object? updatedAt = freezed,
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
abstract class _$TreeDTOCopyWith<$Res> implements $TreeDTOCopyWith<$Res> {
  factory _$TreeDTOCopyWith(_TreeDTO value, $Res Function(_TreeDTO) then) =
      __$TreeDTOCopyWithImpl<$Res>;
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
      String? subtitle,
      String summary,
      String title,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class __$TreeDTOCopyWithImpl<$Res> extends _$TreeDTOCopyWithImpl<$Res>
    implements _$TreeDTOCopyWith<$Res> {
  __$TreeDTOCopyWithImpl(_TreeDTO _value, $Res Function(_TreeDTO) _then)
      : super(_value, (v) => _then(v as _TreeDTO));

  @override
  _TreeDTO get _value => super._value as _TreeDTO;

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
    Object? subtitle = freezed,
    Object? summary = freezed,
    Object? title = freezed,
    Object? uid = freezed,
    Object? updatedAt = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_TreeDTO(
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
class _$_TreeDTO implements _TreeDTO {
  _$_TreeDTO(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required this.genres,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.likesCount,
      this.subtitle,
      required this.summary,
      required this.title,
      required this.uid,
      @ServerTimestampConverter() required this.updatedAt,
      required this.viewsCount});

  factory _$_TreeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TreeDTOFromJson(json);

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
  final String? subtitle;
  @override
  final String summary;
  @override
  final String title;
  @override
  final String uid;
  @override
  @ServerTimestampConverter()
  final FieldValue updatedAt;
  @override
  final int viewsCount;

  @override
  String toString() {
    return 'TreeDTO(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, likesCount: $likesCount, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid, updatedAt: $updatedAt, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TreeDTO &&
            const DeepCollectionEquality().equals(other.authorUID, authorUID) &&
            const DeepCollectionEquality()
                .equals(other.bookmarksCount, bookmarksCount) &&
            const DeepCollectionEquality().equals(other.coverURL, coverURL) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.isNSFW, isNSFW) &&
            const DeepCollectionEquality()
                .equals(other.isPublished, isPublished) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.viewsCount, viewsCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorUID),
      const DeepCollectionEquality().hash(bookmarksCount),
      const DeepCollectionEquality().hash(coverURL),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(isNSFW),
      const DeepCollectionEquality().hash(isPublished),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(likesCount),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(viewsCount));

  @JsonKey(ignore: true)
  @override
  _$TreeDTOCopyWith<_TreeDTO> get copyWith =>
      __$TreeDTOCopyWithImpl<_TreeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TreeDTOToJson(this);
  }
}

abstract class _TreeDTO implements TreeDTO {
  factory _TreeDTO(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required int likesCount,
      String? subtitle,
      required String summary,
      required String title,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) = _$_TreeDTO;

  factory _TreeDTO.fromJson(Map<String, dynamic> json) = _$_TreeDTO.fromJson;

  @override
  String get authorUID;
  @override
  int get bookmarksCount;
  @override
  String get coverURL;
  @override
  List<String> get genres;
  @override
  bool get isNSFW;
  @override
  bool get isPublished;
  @override
  String get language;
  @override
  int get likesCount;
  @override
  String? get subtitle;
  @override
  String get summary;
  @override
  String get title;
  @override
  String get uid;
  @override
  @ServerTimestampConverter()
  FieldValue get updatedAt;
  @override
  int get viewsCount;
  @override
  @JsonKey(ignore: true)
  _$TreeDTOCopyWith<_TreeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
