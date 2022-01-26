// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BranchTearOff {
  const _$BranchTearOff();

  _Branch call(
      {required UniqueID authorUID,
      required Body body,
      required int bookmarksCount,
      required CoverURL coverURL,
      required List<Genre> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required Licence licence,
      required int likesCount,
      required UniqueID? previousBranchUID,
      required Title title,
      required UniqueID treeUID,
      required UniqueID uid,
      required int viewsCount}) {
    return _Branch(
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
      previousBranchUID: previousBranchUID,
      title: title,
      treeUID: treeUID,
      uid: uid,
      viewsCount: viewsCount,
    );
  }
}

/// @nodoc
const $Branch = _$BranchTearOff();

/// @nodoc
mixin _$Branch {
  UniqueID get authorUID => throw _privateConstructorUsedError;
  Body get body => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  CoverURL get coverURL => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  Licence get licence => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  UniqueID? get previousBranchUID => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  UniqueID get treeUID => throw _privateConstructorUsedError;
  UniqueID get uid => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res>;
  $Res call(
      {UniqueID authorUID,
      Body body,
      int bookmarksCount,
      CoverURL coverURL,
      List<Genre> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      Language language,
      Licence licence,
      int likesCount,
      UniqueID? previousBranchUID,
      Title title,
      UniqueID treeUID,
      UniqueID uid,
      int viewsCount});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res> implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  final Branch _value;
  // ignore: unused_field
  final $Res Function(Branch) _then;

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
    Object? previousBranchUID = freezed,
    Object? title = freezed,
    Object? treeUID = freezed,
    Object? uid = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_value.copyWith(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
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
              as Language,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as Licence,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: previousBranchUID == freezed
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
              as UniqueID?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      treeUID: treeUID == freezed
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
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
abstract class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) then) =
      __$BranchCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID authorUID,
      Body body,
      int bookmarksCount,
      CoverURL coverURL,
      List<Genre> genres,
      int index,
      bool isNSFW,
      bool isPublished,
      Language language,
      Licence licence,
      int likesCount,
      UniqueID? previousBranchUID,
      Title title,
      UniqueID treeUID,
      UniqueID uid,
      int viewsCount});
}

/// @nodoc
class __$BranchCopyWithImpl<$Res> extends _$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(_Branch _value, $Res Function(_Branch) _then)
      : super(_value, (v) => _then(v as _Branch));

  @override
  _Branch get _value => super._value as _Branch;

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
    Object? previousBranchUID = freezed,
    Object? title = freezed,
    Object? treeUID = freezed,
    Object? uid = freezed,
    Object? viewsCount = freezed,
  }) {
    return _then(_Branch(
      authorUID: authorUID == freezed
          ? _value.authorUID
          : authorUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
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
              as Language,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as Licence,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      previousBranchUID: previousBranchUID == freezed
          ? _value.previousBranchUID
          : previousBranchUID // ignore: cast_nullable_to_non_nullable
              as UniqueID?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      treeUID: treeUID == freezed
          ? _value.treeUID
          : treeUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
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

class _$_Branch implements _Branch {
  _$_Branch(
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
      required this.previousBranchUID,
      required this.title,
      required this.treeUID,
      required this.uid,
      required this.viewsCount});

  @override
  final UniqueID authorUID;
  @override
  final Body body;
  @override
  final int bookmarksCount;
  @override
  final CoverURL coverURL;
  @override
  final List<Genre> genres;
  @override
  final int index;
  @override
  final bool isNSFW;
  @override
  final bool isPublished;
  @override
  final Language language;
  @override
  final Licence licence;
  @override
  final int likesCount;
  @override
  final UniqueID? previousBranchUID;
  @override
  final Title title;
  @override
  final UniqueID treeUID;
  @override
  final UniqueID uid;
  @override
  final int viewsCount;

  @override
  String toString() {
    return 'Branch(authorUID: $authorUID, body: $body, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, index: $index, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, licence: $licence, likesCount: $likesCount, previousBranchUID: $previousBranchUID, title: $title, treeUID: $treeUID, uid: $uid, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Branch &&
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
                .equals(other.previousBranchUID, previousBranchUID) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.treeUID, treeUID) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
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
      const DeepCollectionEquality().hash(previousBranchUID),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(treeUID),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(viewsCount));

  @JsonKey(ignore: true)
  @override
  _$BranchCopyWith<_Branch> get copyWith =>
      __$BranchCopyWithImpl<_Branch>(this, _$identity);
}

abstract class _Branch implements Branch {
  factory _Branch(
      {required UniqueID authorUID,
      required Body body,
      required int bookmarksCount,
      required CoverURL coverURL,
      required List<Genre> genres,
      required int index,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required Licence licence,
      required int likesCount,
      required UniqueID? previousBranchUID,
      required Title title,
      required UniqueID treeUID,
      required UniqueID uid,
      required int viewsCount}) = _$_Branch;

  @override
  UniqueID get authorUID;
  @override
  Body get body;
  @override
  int get bookmarksCount;
  @override
  CoverURL get coverURL;
  @override
  List<Genre> get genres;
  @override
  int get index;
  @override
  bool get isNSFW;
  @override
  bool get isPublished;
  @override
  Language get language;
  @override
  Licence get licence;
  @override
  int get likesCount;
  @override
  UniqueID? get previousBranchUID;
  @override
  Title get title;
  @override
  UniqueID get treeUID;
  @override
  UniqueID get uid;
  @override
  int get viewsCount;
  @override
  @JsonKey(ignore: true)
  _$BranchCopyWith<_Branch> get copyWith => throw _privateConstructorUsedError;
}
