// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchDTO _$BranchDTOFromJson(Map<String, dynamic> json) {
  return _BranchDTO.fromJson(json);
}

/// @nodoc
class _$BranchDTOTearOff {
  const _$BranchDTOTearOff();

  _BranchDTO call(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required String leaf,
      required String licence,
      required int likesCount,
      required String? previousBranchUID,
      required String title,
      required String treeUID,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) {
    return _BranchDTO(
      authorUID: authorUID,
      bookmarksCount: bookmarksCount,
      coverURL: coverURL,
      genres: genres,
      index: index,
      isNSFW: isNSFW,
      isPublished: isPublished,
      language: language,
      leaf: leaf,
      licence: licence,
      likesCount: likesCount,
      previousBranchUID: previousBranchUID,
      title: title,
      treeUID: treeUID,
      uid: uid,
      updatedAt: updatedAt,
      viewsCount: viewsCount,
    );
  }

  BranchDTO fromJson(Map<String, Object?> json) {
    return BranchDTO.fromJson(json);
  }
}

/// @nodoc
const $BranchDTO = _$BranchDTOTearOff();

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
      _$BranchDTOCopyWithImpl<$Res>;
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
class _$BranchDTOCopyWithImpl<$Res> implements $BranchDTOCopyWith<$Res> {
  _$BranchDTOCopyWithImpl(this._value, this._then);

  final BranchDTO _value;
  // ignore: unused_field
  final $Res Function(BranchDTO) _then;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? index = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? leaf = freezed,
    Object? licence = freezed,
    Object? likesCount = freezed,
    Object? previousBranchUID = freezed,
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
      leaf: leaf == freezed
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as String,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: previousBranchUID == freezed
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
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
abstract class _$BranchDTOCopyWith<$Res> implements $BranchDTOCopyWith<$Res> {
  factory _$BranchDTOCopyWith(
          _BranchDTO value, $Res Function(_BranchDTO) then) =
      __$BranchDTOCopyWithImpl<$Res>;
  @override
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
class __$BranchDTOCopyWithImpl<$Res> extends _$BranchDTOCopyWithImpl<$Res>
    implements _$BranchDTOCopyWith<$Res> {
  __$BranchDTOCopyWithImpl(_BranchDTO _value, $Res Function(_BranchDTO) _then)
      : super(_value, (v) => _then(v as _BranchDTO));

  @override
  _BranchDTO get _value => super._value as _BranchDTO;

  @override
  $Res call({
    Object? authorUID = freezed,
    Object? bookmarksCount = freezed,
    Object? coverURL = freezed,
    Object? genres = freezed,
    Object? index = freezed,
    Object? isNSFW = freezed,
    Object? isPublished = freezed,
    Object? language = freezed,
    Object? leaf = freezed,
    Object? licence = freezed,
    Object? likesCount = freezed,
    Object? previousBranchUID = freezed,
    Object? title = freezed,
    Object? treeUID = freezed,
    Object? uid = freezed,
    Object? updatedAt = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_BranchDTO(
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
      leaf: leaf == freezed
          ? _value.leaf
          : leaf // ignore: cast_nullable_to_non_nullable
              as String,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: previousBranchUID == freezed
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
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
class _$_BranchDTO implements _BranchDTO {
  _$_BranchDTO(
      {required this.authorUID,
      required this.bookmarksCount,
      required this.coverURL,
      required this.genres,
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
      required this.viewsCount});

  factory _$_BranchDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BranchDTOFromJson(json);

  @override
  final String authorUID;
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
            other is _BranchDTO &&
            const DeepCollectionEquality().equals(other.authorUID, authorUID) &&
            const DeepCollectionEquality()
                .equals(other.bookmarksCount, bookmarksCount) &&
            const DeepCollectionEquality().equals(other.coverURL, coverURL) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.isNSFW, isNSFW) &&
            const DeepCollectionEquality()
                .equals(other.isPublished, isPublished) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.leaf, leaf) &&
            const DeepCollectionEquality().equals(other.licence, licence) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality()
                .equals(other.previousBranchUID, previousBranchUID) &&
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
      const DeepCollectionEquality().hash(bookmarksCount),
      const DeepCollectionEquality().hash(coverURL),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(isNSFW),
      const DeepCollectionEquality().hash(isPublished),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(leaf),
      const DeepCollectionEquality().hash(licence),
      const DeepCollectionEquality().hash(likesCount),
      const DeepCollectionEquality().hash(previousBranchUID),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(treeUID),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(viewsCount));

  @JsonKey(ignore: true)
  @override
  _$BranchDTOCopyWith<_BranchDTO> get copyWith =>
      __$BranchDTOCopyWithImpl<_BranchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchDTOToJson(this);
  }
}

abstract class _BranchDTO implements BranchDTO {
  factory _BranchDTO(
      {required String authorUID,
      required int bookmarksCount,
      required String coverURL,
      required List<String> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required String language,
      required String leaf,
      required String licence,
      required int likesCount,
      required String? previousBranchUID,
      required String title,
      required String treeUID,
      required String uid,
      @ServerTimestampConverter() required FieldValue updatedAt,
      required int viewsCount}) = _$_BranchDTO;

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
  _$BranchDTOCopyWith<_BranchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
