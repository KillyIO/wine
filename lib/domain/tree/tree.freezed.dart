// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TreeTearOff {
  const _$TreeTearOff();

  _Tree call(
      {required UniqueID authorUID,
      required int bookmarksCount,
      required CoverURL coverURL,
      required List<Genre> genres,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required int likesCount,
      Subtitle? subtitle,
      required Summary summary,
      required Title title,
      required UniqueID uid,
      required int viewsCount}) {
    return _Tree(
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
      viewsCount: viewsCount,
    );
  }
}

/// @nodoc
const $Tree = _$TreeTearOff();

/// @nodoc
mixin _$Tree {
  UniqueID get authorUID => throw _privateConstructorUsedError;
  int get bookmarksCount => throw _privateConstructorUsedError;
  CoverURL get coverURL => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
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
  $TreeCopyWith<Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeCopyWith<$Res> {
  factory $TreeCopyWith(Tree value, $Res Function(Tree) then) =
      _$TreeCopyWithImpl<$Res>;
  $Res call(
      {UniqueID authorUID,
      int bookmarksCount,
      CoverURL coverURL,
      List<Genre> genres,
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
class _$TreeCopyWithImpl<$Res> implements $TreeCopyWith<$Res> {
  _$TreeCopyWithImpl(this._value, this._then);

  final Tree _value;
  // ignore: unused_field
  final $Res Function(Tree) _then;

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
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
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
abstract class _$TreeCopyWith<$Res> implements $TreeCopyWith<$Res> {
  factory _$TreeCopyWith(_Tree value, $Res Function(_Tree) then) =
      __$TreeCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID authorUID,
      int bookmarksCount,
      CoverURL coverURL,
      List<Genre> genres,
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
class __$TreeCopyWithImpl<$Res> extends _$TreeCopyWithImpl<$Res>
    implements _$TreeCopyWith<$Res> {
  __$TreeCopyWithImpl(_Tree _value, $Res Function(_Tree) _then)
      : super(_value, (v) => _then(v as _Tree));

  @override
  _Tree get _value => super._value as _Tree;

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
    Object? viewsCount = freezed,
  }) {
    return _then(_Tree(
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
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
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

class _$_Tree implements _Tree {
  _$_Tree(
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
      required this.viewsCount});

  @override
  final UniqueID authorUID;
  @override
  final int bookmarksCount;
  @override
  final CoverURL coverURL;
  @override
  final List<Genre> genres;
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
    return 'Tree(authorUID: $authorUID, bookmarksCount: $bookmarksCount, coverURL: $coverURL, genres: $genres, isNSFW: $isNSFW, isPublished: $isPublished, language: $language, likesCount: $likesCount, subtitle: $subtitle, summary: $summary, title: $title, uid: $uid, viewsCount: $viewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tree &&
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
      const DeepCollectionEquality().hash(viewsCount));

  @JsonKey(ignore: true)
  @override
  _$TreeCopyWith<_Tree> get copyWith =>
      __$TreeCopyWithImpl<_Tree>(this, _$identity);
}

abstract class _Tree implements Tree {
  factory _Tree(
      {required UniqueID authorUID,
      required int bookmarksCount,
      required CoverURL coverURL,
      required List<Genre> genres,
      required bool isNSFW,
      required bool isPublished,
      required Language language,
      required int likesCount,
      Subtitle? subtitle,
      required Summary summary,
      required Title title,
      required UniqueID uid,
      required int viewsCount}) = _$_Tree;

  @override
  UniqueID get authorUID;
  @override
  int get bookmarksCount;
  @override
  CoverURL get coverURL;
  @override
  List<Genre> get genres;
  @override
  bool get isNSFW;
  @override
  bool get isPublished;
  @override
  Language get language;
  @override
  int get likesCount;
  @override
  Subtitle? get subtitle;
  @override
  Summary get summary;
  @override
  Title get title;
  @override
  UniqueID get uid;
  @override
  int get viewsCount;
  @override
  @JsonKey(ignore: true)
  _$TreeCopyWith<_Tree> get copyWith => throw _privateConstructorUsedError;
}
