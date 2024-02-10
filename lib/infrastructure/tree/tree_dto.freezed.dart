// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreeDTO _$TreeDTOFromJson(Map<String, dynamic> json) {
  return _TreeDTO.fromJson(json);
}

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
  String get synopsis => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get updatedAt => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeDTOCopyWith<TreeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDTOCopyWith<$Res> {
  factory $TreeDTOCopyWith(TreeDTO value, $Res Function(TreeDTO) then) =
      _$TreeDTOCopyWithImpl<$Res, TreeDTO>;
  @useResult
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      bool isNSFW,
      bool isPublished,
      String language,
      int likesCount,
      String synopsis,
      String title,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount,
      String? subtitle});
}

/// @nodoc
class _$TreeDTOCopyWithImpl<$Res, $Val extends TreeDTO>
    implements $TreeDTOCopyWith<$Res> {
  _$TreeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorUID = null,
    Object? bookmarksCount = null,
    Object? coverURL = null,
    Object? genres = null,
    Object? isNSFW = null,
    Object? isPublished = null,
    Object? language = null,
    Object? likesCount = null,
    Object? synopsis = null,
    Object? title = null,
    Object? uid = null,
    Object? updatedAt = null,
    Object? viewsCount = null,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID: null == authorUID
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarksCount: null == bookmarksCount
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: null == coverURL
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNSFW: null == isNSFW
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeDTOImplCopyWith<$Res> implements $TreeDTOCopyWith<$Res> {
  factory _$$TreeDTOImplCopyWith(
          _$TreeDTOImpl value, $Res Function(_$TreeDTOImpl) then) =
      __$$TreeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      bool isNSFW,
      bool isPublished,
      String language,
      int likesCount,
      String synopsis,
      String title,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount,
      String? subtitle});
}

/// @nodoc
class __$$TreeDTOImplCopyWithImpl<$Res>
    extends _$TreeDTOCopyWithImpl<$Res, _$TreeDTOImpl>
    implements _$$TreeDTOImplCopyWith<$Res> {
  __$$TreeDTOImplCopyWithImpl(
      _$TreeDTOImpl _value, $Res Function(_$TreeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorUID = null,
    Object? bookmarksCount = null,
    Object? coverURL = null,
    Object? genres = null,
    Object? isNSFW = null,
    Object? isPublished = null,
    Object? language = null,
    Object? likesCount = null,
    Object? synopsis = null,
    Object? title = null,
    Object? uid = null,
    Object? updatedAt = null,
    Object? viewsCount = null,
    Object? subtitle = freezed,
  }) {
    return _then(_$TreeDTOImpl(
      authorUID: null == authorUID
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarksCount: null == bookmarksCount
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: null == coverURL
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isNSFW: null == isNSFW
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeDTOImpl implements _TreeDTO {
  _$TreeDTOImpl(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required final List<String> genres,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.likesCount,
      required this.synopsis,
      required this.title,
      required this.uid,
      @ServerTimestampConverter() required this.updatedAt,
      required this.viewsCount,
      this.subtitle})
      : _genres = genres;

  factory _$TreeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeDTOImplFromJson(json);

  @override
  final String authorUID;
  @override
  final int bookmarksCount;
  @override
  final String coverURL;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final String language;
  @override
  final int likesCount;
  @override
  final String synopsis;
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
  final String? subtitle;

  @override
  String toString() {
    return 'TreeDTO(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, likesCount: $likesCount, synopsis: $synopsis, title: $title, uid: $uid, updatedAt: $updatedAt, viewsCount: $viewsCount, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeDTOImpl &&
            (identical(other.authorUID, authorUID) ||
                other.authorUID == authorUID) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                other.bookmarksCount == bookmarksCount) &&
            (identical(other.coverURL, coverURL) ||
                other.coverURL == coverURL) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.isNSFW, isNSFW) || other.isNSFW == isNSFW) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.viewsCount, viewsCount) ||
                other.viewsCount == viewsCount) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorUID,
      bookmarksCount,
      coverURL,
      const DeepCollectionEquality().hash(_genres),
      isNSFW,
      isPublished,
      language,
      likesCount,
      synopsis,
      title,
      uid,
      updatedAt,
      viewsCount,
      subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeDTOImplCopyWith<_$TreeDTOImpl> get copyWith =>
      __$$TreeDTOImplCopyWithImpl<_$TreeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeDTOImplToJson(
      this,
    );
  }
}

abstract class _TreeDTO implements TreeDTO {
  factory _TreeDTO(
      {required final String authorUID,
      required final int bookmarksCount,
      required final String coverURL,
      required final List<String> genres,
      required final bool isNSFW,
      required final bool isPublished,
      required final String language,
      required final int likesCount,
      required final String synopsis,
      required final String title,
      required final String uid,
      @ServerTimestampConverter() required final FieldValue updatedAt,
      required final int viewsCount,
      final String? subtitle}) = _$TreeDTOImpl;

  factory _TreeDTO.fromJson(Map<String, dynamic> json) = _$TreeDTOImpl.fromJson;

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
  String get synopsis;
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
  String? get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$TreeDTOImplCopyWith<_$TreeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
