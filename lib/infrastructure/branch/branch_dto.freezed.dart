// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchDTO _$BranchDTOFromJson(Map<String, dynamic> json) {
  return _BranchDTO.fromJson(json);
}

/// @nodoc
mixin _$BranchDTO {
  String get authorUID => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  String get coverURL => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get leaf => throw _privateConstructorUsedError;
  String get licence => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  String? get previousBranchUID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get treeUID => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get updatedAt => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchDTOCopyWith<BranchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchDTOCopyWith<$Res> {
  factory $BranchDTOCopyWith(BranchDTO value, $Res Function(BranchDTO) then) =
      _$BranchDTOCopyWithImpl<$Res, BranchDTO>;
  @useResult
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      String language,
      String leaf,
      String licence,
      int likesCount,
      String? previousBranchUID,
      String title,
      String treeUID,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class _$BranchDTOCopyWithImpl<$Res, $Val extends BranchDTO>
    implements $BranchDTOCopyWith<$Res> {
  _$BranchDTOCopyWithImpl(this._value, this._then);

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
    Object? index = null,
    Object? isNSFW = null,
    Object? isPublished = null,
    Object? language = null,
    Object? leaf = null,
    Object? licence = null,
    Object? likesCount = null,
    Object? previousBranchUID = freezed,
    Object? title = null,
    Object? treeUID = null,
    Object? uid = null,
    Object? updatedAt = null,
    Object? viewsCount = null,
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
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
      leaf: null == leaf
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as String,
      licence: null == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: freezed == previousBranchUID
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      treeUID: null == treeUID
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BranchDTOCopyWith<$Res> implements $BranchDTOCopyWith<$Res> {
  factory _$$_BranchDTOCopyWith(
          _$_BranchDTO value, $Res Function(_$_BranchDTO) then) =
      __$$_BranchDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorUID,
      int bookmarksCount,
      String coverURL,
      List<String> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      String language,
      String leaf,
      String licence,
      int likesCount,
      String? previousBranchUID,
      String title,
      String treeUID,
      String uid,
      @ServerTimestampConverter() FieldValue updatedAt,
      int viewsCount});
}

/// @nodoc
class __$$_BranchDTOCopyWithImpl<$Res>
    extends _$BranchDTOCopyWithImpl<$Res, _$_BranchDTO>
    implements _$$_BranchDTOCopyWith<$Res> {
  __$$_BranchDTOCopyWithImpl(
      _$_BranchDTO _value, $Res Function(_$_BranchDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorUID = null,
    Object? bookmarksCount = null,
    Object? coverURL = null,
    Object? genres = null,
    Object? index = null,
    Object? isNSFW = null,
    Object? isPublished = null,
    Object? language = null,
    Object? leaf = null,
    Object? licence = null,
    Object? likesCount = null,
    Object? previousBranchUID = freezed,
    Object? title = null,
    Object? treeUID = null,
    Object? uid = null,
    Object? updatedAt = null,
    Object? viewsCount = null,
  }) {
    return _then(_$_BranchDTO(
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
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
      leaf: null == leaf
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as String,
      licence: null == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: freezed == previousBranchUID
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      treeUID: null == treeUID
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchDTO implements _BranchDTO {
  _$_BranchDTO(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required final List<String> genres,
      required this.index,
      required this.isNSFW,
      required this.isPublished,
      required this.language,
      required this.leaf,
      required this.licence,
      required this.likesCount,
      required this.previousBranchUID,
      required this.title,
      required this.treeUID,
      required this.uid,
      @ServerTimestampConverter() required this.updatedAt,
      required this.viewsCount})
      : _genres = genres;

  factory _$_BranchDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BranchDTOFromJson(json);

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
  final int index;
  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final String language;
  @override
  final String leaf;
  @override
  final String licence;
  @override
  final int likesCount;
  @override
  final String? previousBranchUID;
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
    return 'BranchDTO(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, index: $index, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, leaf: $leaf, licence: $licence, likesCount: $likesCount, previousBranchUID: $previousBranchUID, title: $title, treeUID: $treeUID, uid: $uid, updatedAt: $updatedAt, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BranchDTO &&
            (identical(other.authorUID, authorUID) ||
                other.authorUID == authorUID) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                other.bookmarksCount == bookmarksCount) &&
            (identical(other.coverURL, coverURL) ||
                other.coverURL == coverURL) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isNSFW, isNSFW) || other.isNSFW == isNSFW) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.leaf, leaf) || other.leaf == leaf) &&
            (identical(other.licence, licence) || other.licence == licence) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.previousBranchUID, previousBranchUID) ||
                other.previousBranchUID == previousBranchUID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.treeUID, treeUID) || other.treeUID == treeUID) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.viewsCount, viewsCount) ||
                other.viewsCount == viewsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorUID,
      bookmarksCount,
      coverURL,
      const DeepCollectionEquality().hash(_genres),
      index,
      isNSFW,
      isPublished,
      language,
      leaf,
      licence,
      likesCount,
      previousBranchUID,
      title,
      treeUID,
      uid,
      updatedAt,
      viewsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BranchDTOCopyWith<_$_BranchDTO> get copyWith =>
      __$$_BranchDTOCopyWithImpl<_$_BranchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchDTOToJson(
      this,
    );
  }
}

abstract class _BranchDTO implements BranchDTO {
  factory _BranchDTO(
      {required final String authorUID,
      required final int bookmarksCount,
      required final String coverURL,
      required final List<String> genres,
      required final int index,
      required final bool isNSFW,
      required final bool isPublished,
      required final String language,
      required final String leaf,
      required final String licence,
      required final int likesCount,
      required final String? previousBranchUID,
      required final String title,
      required final String treeUID,
      required final String uid,
      @ServerTimestampConverter() required final FieldValue updatedAt,
      required final int viewsCount}) = _$_BranchDTO;

  factory _BranchDTO.fromJson(Map<String, dynamic> json) =
      _$_BranchDTO.fromJson;

  @override
  String get authorUID;
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
  String get leaf;
  @override
  String get licence;
  @override
  int get likesCount;
  @override
  String? get previousBranchUID;
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
  _$$_BranchDTOCopyWith<_$_BranchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
