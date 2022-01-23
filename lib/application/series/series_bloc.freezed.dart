// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SeriesEventTearOff {
  const _$SeriesEventTearOff();

  AuthorLoaded authorLoaded() {
    return const AuthorLoaded();
  }

  BookmarkButtonPressed bookmarkButtonPressed({required bool isBookmarked}) {
    return BookmarkButtonPressed(
      isBookmarked: isBookmarked,
    );
  }

  ChapterOneLoaded chapterOneLoaded() {
    return const ChapterOneLoaded();
  }

  LaunchWithID launchWithID(UniqueID id, {Series? series}) {
    return LaunchWithID(
      id,
      series: series,
    );
  }

  LikeButtonPressed likeButtonPressed({required bool isLiked}) {
    return LikeButtonPressed(
      isLiked: isLiked,
    );
  }

  LikeStatusLoaded likeStatusLoaded() {
    return const LikeStatusLoaded();
  }

  SeriesSet seriesSet() {
    return const SeriesSet();
  }

  SessionFetched sessionFetched() {
    return const SessionFetched();
  }

  SettingsFetched settingsFetched() {
    return const SettingsFetched();
  }

  ViewsUpdated viewsUpdated() {
    return const ViewsUpdated();
  }
}

/// @nodoc
const $SeriesEvent = _$SeriesEventTearOff();

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
          SeriesEvent value, $Res Function(SeriesEvent) then) =
      _$SeriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res> implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  final SeriesEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesEvent) _then;
}

/// @nodoc
abstract class $AuthorLoadedCopyWith<$Res> {
  factory $AuthorLoadedCopyWith(
          AuthorLoaded value, $Res Function(AuthorLoaded) then) =
      _$AuthorLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorLoadedCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $AuthorLoadedCopyWith<$Res> {
  _$AuthorLoadedCopyWithImpl(
      AuthorLoaded _value, $Res Function(AuthorLoaded) _then)
      : super(_value, (v) => _then(v as AuthorLoaded));

  @override
  AuthorLoaded get _value => super._value as AuthorLoaded;
}

/// @nodoc

class _$AuthorLoaded implements AuthorLoaded {
  const _$AuthorLoaded();

  @override
  String toString() {
    return 'SeriesEvent.authorLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthorLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return authorLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return authorLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (authorLoaded != null) {
      return authorLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return authorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return authorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (authorLoaded != null) {
      return authorLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthorLoaded implements SeriesEvent {
  const factory AuthorLoaded() = _$AuthorLoaded;
}

/// @nodoc
abstract class $BookmarkButtonPressedCopyWith<$Res> {
  factory $BookmarkButtonPressedCopyWith(BookmarkButtonPressed value,
          $Res Function(BookmarkButtonPressed) then) =
      _$BookmarkButtonPressedCopyWithImpl<$Res>;
  $Res call({bool isBookmarked});
}

/// @nodoc
class _$BookmarkButtonPressedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $BookmarkButtonPressedCopyWith<$Res> {
  _$BookmarkButtonPressedCopyWithImpl(
      BookmarkButtonPressed _value, $Res Function(BookmarkButtonPressed) _then)
      : super(_value, (v) => _then(v as BookmarkButtonPressed));

  @override
  BookmarkButtonPressed get _value => super._value as BookmarkButtonPressed;

  @override
  $Res call({
    Object? isBookmarked = freezed,
  }) {
    return _then(BookmarkButtonPressed(
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookmarkButtonPressed implements BookmarkButtonPressed {
  const _$BookmarkButtonPressed({required this.isBookmarked});

  @override
  final bool isBookmarked;

  @override
  String toString() {
    return 'SeriesEvent.bookmarkButtonPressed(isBookmarked: $isBookmarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookmarkButtonPressed &&
            const DeepCollectionEquality()
                .equals(other.isBookmarked, isBookmarked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isBookmarked));

  @JsonKey(ignore: true)
  @override
  $BookmarkButtonPressedCopyWith<BookmarkButtonPressed> get copyWith =>
      _$BookmarkButtonPressedCopyWithImpl<BookmarkButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return bookmarkButtonPressed(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return bookmarkButtonPressed?.call(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(isBookmarked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return bookmarkButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BookmarkButtonPressed implements SeriesEvent {
  const factory BookmarkButtonPressed({required bool isBookmarked}) =
      _$BookmarkButtonPressed;

  bool get isBookmarked;
  @JsonKey(ignore: true)
  $BookmarkButtonPressedCopyWith<BookmarkButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterOneLoadedCopyWith<$Res> {
  factory $ChapterOneLoadedCopyWith(
          ChapterOneLoaded value, $Res Function(ChapterOneLoaded) then) =
      _$ChapterOneLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChapterOneLoadedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $ChapterOneLoadedCopyWith<$Res> {
  _$ChapterOneLoadedCopyWithImpl(
      ChapterOneLoaded _value, $Res Function(ChapterOneLoaded) _then)
      : super(_value, (v) => _then(v as ChapterOneLoaded));

  @override
  ChapterOneLoaded get _value => super._value as ChapterOneLoaded;
}

/// @nodoc

class _$ChapterOneLoaded implements ChapterOneLoaded {
  const _$ChapterOneLoaded();

  @override
  String toString() {
    return 'SeriesEvent.chapterOneLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChapterOneLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return chapterOneLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return chapterOneLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (chapterOneLoaded != null) {
      return chapterOneLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return chapterOneLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return chapterOneLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (chapterOneLoaded != null) {
      return chapterOneLoaded(this);
    }
    return orElse();
  }
}

abstract class ChapterOneLoaded implements SeriesEvent {
  const factory ChapterOneLoaded() = _$ChapterOneLoaded;
}

/// @nodoc
abstract class $LaunchWithIDCopyWith<$Res> {
  factory $LaunchWithIDCopyWith(
          LaunchWithID value, $Res Function(LaunchWithID) then) =
      _$LaunchWithIDCopyWithImpl<$Res>;
  $Res call({UniqueID id, Series? series});

  $SeriesCopyWith<$Res>? get series;
}

/// @nodoc
class _$LaunchWithIDCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $LaunchWithIDCopyWith<$Res> {
  _$LaunchWithIDCopyWithImpl(
      LaunchWithID _value, $Res Function(LaunchWithID) _then)
      : super(_value, (v) => _then(v as LaunchWithID));

  @override
  LaunchWithID get _value => super._value as LaunchWithID;

  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(LaunchWithID(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
    ));
  }

  @override
  $SeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
    });
  }
}

/// @nodoc

class _$LaunchWithID implements LaunchWithID {
  const _$LaunchWithID(this.id, {this.series});

  @override
  final UniqueID id;
  @override
  final Series? series;

  @override
  String toString() {
    return 'SeriesEvent.launchWithID(id: $id, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchWithID &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.series, series));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(series));

  @JsonKey(ignore: true)
  @override
  $LaunchWithIDCopyWith<LaunchWithID> get copyWith =>
      _$LaunchWithIDCopyWithImpl<LaunchWithID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return launchWithID(id, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return launchWithID?.call(id, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (launchWithID != null) {
      return launchWithID(id, series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return launchWithID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return launchWithID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (launchWithID != null) {
      return launchWithID(this);
    }
    return orElse();
  }
}

abstract class LaunchWithID implements SeriesEvent {
  const factory LaunchWithID(UniqueID id, {Series? series}) = _$LaunchWithID;

  UniqueID get id;
  Series? get series;
  @JsonKey(ignore: true)
  $LaunchWithIDCopyWith<LaunchWithID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeButtonPressedCopyWith<$Res> {
  factory $LikeButtonPressedCopyWith(
          LikeButtonPressed value, $Res Function(LikeButtonPressed) then) =
      _$LikeButtonPressedCopyWithImpl<$Res>;
  $Res call({bool isLiked});
}

/// @nodoc
class _$LikeButtonPressedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $LikeButtonPressedCopyWith<$Res> {
  _$LikeButtonPressedCopyWithImpl(
      LikeButtonPressed _value, $Res Function(LikeButtonPressed) _then)
      : super(_value, (v) => _then(v as LikeButtonPressed));

  @override
  LikeButtonPressed get _value => super._value as LikeButtonPressed;

  @override
  $Res call({
    Object? isLiked = freezed,
  }) {
    return _then(LikeButtonPressed(
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LikeButtonPressed implements LikeButtonPressed {
  const _$LikeButtonPressed({required this.isLiked});

  @override
  final bool isLiked;

  @override
  String toString() {
    return 'SeriesEvent.likeButtonPressed(isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeButtonPressed &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLiked));

  @JsonKey(ignore: true)
  @override
  $LikeButtonPressedCopyWith<LikeButtonPressed> get copyWith =>
      _$LikeButtonPressedCopyWithImpl<LikeButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return likeButtonPressed(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return likeButtonPressed?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (likeButtonPressed != null) {
      return likeButtonPressed(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return likeButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (likeButtonPressed != null) {
      return likeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LikeButtonPressed implements SeriesEvent {
  const factory LikeButtonPressed({required bool isLiked}) =
      _$LikeButtonPressed;

  bool get isLiked;
  @JsonKey(ignore: true)
  $LikeButtonPressedCopyWith<LikeButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeStatusLoadedCopyWith<$Res> {
  factory $LikeStatusLoadedCopyWith(
          LikeStatusLoaded value, $Res Function(LikeStatusLoaded) then) =
      _$LikeStatusLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikeStatusLoadedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $LikeStatusLoadedCopyWith<$Res> {
  _$LikeStatusLoadedCopyWithImpl(
      LikeStatusLoaded _value, $Res Function(LikeStatusLoaded) _then)
      : super(_value, (v) => _then(v as LikeStatusLoaded));

  @override
  LikeStatusLoaded get _value => super._value as LikeStatusLoaded;
}

/// @nodoc

class _$LikeStatusLoaded implements LikeStatusLoaded {
  const _$LikeStatusLoaded();

  @override
  String toString() {
    return 'SeriesEvent.likeStatusLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LikeStatusLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return likeStatusLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return likeStatusLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (likeStatusLoaded != null) {
      return likeStatusLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return likeStatusLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return likeStatusLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (likeStatusLoaded != null) {
      return likeStatusLoaded(this);
    }
    return orElse();
  }
}

abstract class LikeStatusLoaded implements SeriesEvent {
  const factory LikeStatusLoaded() = _$LikeStatusLoaded;
}

/// @nodoc
abstract class $SeriesSetCopyWith<$Res> {
  factory $SeriesSetCopyWith(SeriesSet value, $Res Function(SeriesSet) then) =
      _$SeriesSetCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesSetCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $SeriesSetCopyWith<$Res> {
  _$SeriesSetCopyWithImpl(SeriesSet _value, $Res Function(SeriesSet) _then)
      : super(_value, (v) => _then(v as SeriesSet));

  @override
  SeriesSet get _value => super._value as SeriesSet;
}

/// @nodoc

class _$SeriesSet implements SeriesSet {
  const _$SeriesSet();

  @override
  String toString() {
    return 'SeriesEvent.seriesSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SeriesSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return seriesSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return seriesSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (seriesSet != null) {
      return seriesSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return seriesSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return seriesSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (seriesSet != null) {
      return seriesSet(this);
    }
    return orElse();
  }
}

abstract class SeriesSet implements SeriesEvent {
  const factory SeriesSet() = _$SeriesSet;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $SessionFetchedCopyWith<$Res> {
  _$SessionFetchedCopyWithImpl(
      SessionFetched _value, $Res Function(SessionFetched) _then)
      : super(_value, (v) => _then(v as SessionFetched));

  @override
  SessionFetched get _value => super._value as SessionFetched;
}

/// @nodoc

class _$SessionFetched implements SessionFetched {
  const _$SessionFetched();

  @override
  String toString() {
    return 'SeriesEvent.sessionFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SessionFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SeriesEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
abstract class $SettingsFetchedCopyWith<$Res> {
  factory $SettingsFetchedCopyWith(
          SettingsFetched value, $Res Function(SettingsFetched) then) =
      _$SettingsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsFetchedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $SettingsFetchedCopyWith<$Res> {
  _$SettingsFetchedCopyWithImpl(
      SettingsFetched _value, $Res Function(SettingsFetched) _then)
      : super(_value, (v) => _then(v as SettingsFetched));

  @override
  SettingsFetched get _value => super._value as SettingsFetched;
}

/// @nodoc

class _$SettingsFetched implements SettingsFetched {
  const _$SettingsFetched();

  @override
  String toString() {
    return 'SeriesEvent.settingsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return settingsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return settingsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return settingsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched(this);
    }
    return orElse();
  }
}

abstract class SettingsFetched implements SeriesEvent {
  const factory SettingsFetched() = _$SettingsFetched;
}

/// @nodoc
abstract class $ViewsUpdatedCopyWith<$Res> {
  factory $ViewsUpdatedCopyWith(
          ViewsUpdated value, $Res Function(ViewsUpdated) then) =
      _$ViewsUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewsUpdatedCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $ViewsUpdatedCopyWith<$Res> {
  _$ViewsUpdatedCopyWithImpl(
      ViewsUpdated _value, $Res Function(ViewsUpdated) _then)
      : super(_value, (v) => _then(v as ViewsUpdated));

  @override
  ViewsUpdated get _value => super._value as ViewsUpdated;
}

/// @nodoc

class _$ViewsUpdated implements ViewsUpdated {
  const _$ViewsUpdated();

  @override
  String toString() {
    return 'SeriesEvent.viewsUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ViewsUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() chapterOneLoaded,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() likeStatusLoaded,
    required TResult Function() seriesSet,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() viewsUpdated,
  }) {
    return viewsUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
  }) {
    return viewsUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? chapterOneLoaded,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? likeStatusLoaded,
    TResult Function()? seriesSet,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? viewsUpdated,
    required TResult orElse(),
  }) {
    if (viewsUpdated != null) {
      return viewsUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(ChapterOneLoaded value) chapterOneLoaded,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(SeriesSet value) seriesSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(ViewsUpdated value) viewsUpdated,
  }) {
    return viewsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
  }) {
    return viewsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(ChapterOneLoaded value)? chapterOneLoaded,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(SeriesSet value)? seriesSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    required TResult orElse(),
  }) {
    if (viewsUpdated != null) {
      return viewsUpdated(this);
    }
    return orElse();
  }
}

abstract class ViewsUpdated implements SeriesEvent {
  const factory ViewsUpdated() = _$ViewsUpdated;
}

/// @nodoc
class _$SeriesStateTearOff {
  const _$SeriesStateTearOff();

  _SeriesState call(
      {required bool authorIsUser,
      required User author,
      Chapter? chapterOne,
      Chapter? chapterResume,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isBookmarked,
      required bool isLiked,
      required bool isProcessing,
      required Series series,
      required User session,
      required Settings settings}) {
    return _SeriesState(
      authorIsUser: authorIsUser,
      author: author,
      chapterOne: chapterOne,
      chapterResume: chapterResume,
      failureOption: failureOption,
      isBookmarked: isBookmarked,
      isLiked: isLiked,
      isProcessing: isProcessing,
      series: series,
      session: session,
      settings: settings,
    );
  }
}

/// @nodoc
const $SeriesState = _$SeriesStateTearOff();

/// @nodoc
mixin _$SeriesState {
  bool get authorIsUser => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  Chapter? get chapterOne => throw _privateConstructorUsedError;
  Chapter? get chapterResume => throw _privateConstructorUsedError;
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Series get series => throw _privateConstructorUsedError;
  User get session => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesStateCopyWith<SeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesStateCopyWith<$Res> {
  factory $SeriesStateCopyWith(
          SeriesState value, $Res Function(SeriesState) then) =
      _$SeriesStateCopyWithImpl<$Res>;
  $Res call(
      {bool authorIsUser,
      User author,
      Chapter? chapterOne,
      Chapter? chapterResume,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isBookmarked,
      bool isLiked,
      bool isProcessing,
      Series series,
      User session,
      Settings settings});

  $UserCopyWith<$Res> get author;
  $ChapterCopyWith<$Res>? get chapterOne;
  $ChapterCopyWith<$Res>? get chapterResume;
  $SeriesCopyWith<$Res> get series;
  $UserCopyWith<$Res> get session;
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SeriesStateCopyWithImpl<$Res> implements $SeriesStateCopyWith<$Res> {
  _$SeriesStateCopyWithImpl(this._value, this._then);

  final SeriesState _value;
  // ignore: unused_field
  final $Res Function(SeriesState) _then;

  @override
  $Res call({
    Object? authorIsUser = freezed,
    Object? author = freezed,
    Object? chapterOne = freezed,
    Object? chapterResume = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      authorIsUser: authorIsUser == freezed
          ? _value.authorIsUser
          : authorIsUser // ignore: cast_nullable_to_non_nullable
              as bool,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      chapterOne: chapterOne == freezed
          ? _value.chapterOne
          : chapterOne // ignore: cast_nullable_to_non_nullable
              as Chapter?,
      chapterResume: chapterResume == freezed
          ? _value.chapterResume
          : chapterResume // ignore: cast_nullable_to_non_nullable
              as Chapter?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $ChapterCopyWith<$Res>? get chapterOne {
    if (_value.chapterOne == null) {
      return null;
    }

    return $ChapterCopyWith<$Res>(_value.chapterOne!, (value) {
      return _then(_value.copyWith(chapterOne: value));
    });
  }

  @override
  $ChapterCopyWith<$Res>? get chapterResume {
    if (_value.chapterResume == null) {
      return null;
    }

    return $ChapterCopyWith<$Res>(_value.chapterResume!, (value) {
      return _then(_value.copyWith(chapterResume: value));
    });
  }

  @override
  $SeriesCopyWith<$Res> get series {
    return $SeriesCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value));
    });
  }

  @override
  $UserCopyWith<$Res> get session {
    return $UserCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$SeriesStateCopyWith<$Res>
    implements $SeriesStateCopyWith<$Res> {
  factory _$SeriesStateCopyWith(
          _SeriesState value, $Res Function(_SeriesState) then) =
      __$SeriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool authorIsUser,
      User author,
      Chapter? chapterOne,
      Chapter? chapterResume,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isBookmarked,
      bool isLiked,
      bool isProcessing,
      Series series,
      User session,
      Settings settings});

  @override
  $UserCopyWith<$Res> get author;
  @override
  $ChapterCopyWith<$Res>? get chapterOne;
  @override
  $ChapterCopyWith<$Res>? get chapterResume;
  @override
  $SeriesCopyWith<$Res> get series;
  @override
  $UserCopyWith<$Res> get session;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$SeriesStateCopyWithImpl<$Res> extends _$SeriesStateCopyWithImpl<$Res>
    implements _$SeriesStateCopyWith<$Res> {
  __$SeriesStateCopyWithImpl(
      _SeriesState _value, $Res Function(_SeriesState) _then)
      : super(_value, (v) => _then(v as _SeriesState));

  @override
  _SeriesState get _value => super._value as _SeriesState;

  @override
  $Res call({
    Object? authorIsUser = freezed,
    Object? author = freezed,
    Object? chapterOne = freezed,
    Object? chapterResume = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
    Object? settings = freezed,
  }) {
    return _then(_SeriesState(
      authorIsUser: authorIsUser == freezed
          ? _value.authorIsUser
          : authorIsUser // ignore: cast_nullable_to_non_nullable
              as bool,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      chapterOne: chapterOne == freezed
          ? _value.chapterOne
          : chapterOne // ignore: cast_nullable_to_non_nullable
              as Chapter?,
      chapterResume: chapterResume == freezed
          ? _value.chapterResume
          : chapterResume // ignore: cast_nullable_to_non_nullable
              as Chapter?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }
}

/// @nodoc

class _$_SeriesState implements _SeriesState {
  const _$_SeriesState(
      {required this.authorIsUser,
      required this.author,
      this.chapterOne,
      this.chapterResume,
      required this.failureOption,
      required this.isBookmarked,
      required this.isLiked,
      required this.isProcessing,
      required this.series,
      required this.session,
      required this.settings});

  @override
  final bool authorIsUser;
  @override
  final User author;
  @override
  final Chapter? chapterOne;
  @override
  final Chapter? chapterResume;
  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final bool isBookmarked;
  @override
  final bool isLiked;
  @override
  final bool isProcessing;
  @override
  final Series series;
  @override
  final User session;
  @override
  final Settings settings;

  @override
  String toString() {
    return 'SeriesState(authorIsUser: $authorIsUser, author: $author, chapterOne: $chapterOne, chapterResume: $chapterResume, failureOption: $failureOption, isBookmarked: $isBookmarked, isLiked: $isLiked, isProcessing: $isProcessing, series: $series, session: $session, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeriesState &&
            const DeepCollectionEquality()
                .equals(other.authorIsUser, authorIsUser) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.chapterOne, chapterOne) &&
            const DeepCollectionEquality()
                .equals(other.chapterResume, chapterResume) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isBookmarked, isBookmarked) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorIsUser),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(chapterOne),
      const DeepCollectionEquality().hash(chapterResume),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isBookmarked),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$SeriesStateCopyWith<_SeriesState> get copyWith =>
      __$SeriesStateCopyWithImpl<_SeriesState>(this, _$identity);
}

abstract class _SeriesState implements SeriesState {
  const factory _SeriesState(
      {required bool authorIsUser,
      required User author,
      Chapter? chapterOne,
      Chapter? chapterResume,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isBookmarked,
      required bool isLiked,
      required bool isProcessing,
      required Series series,
      required User session,
      required Settings settings}) = _$_SeriesState;

  @override
  bool get authorIsUser;
  @override
  User get author;
  @override
  Chapter? get chapterOne;
  @override
  Chapter? get chapterResume;
  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  bool get isBookmarked;
  @override
  bool get isLiked;
  @override
  bool get isProcessing;
  @override
  Series get series;
  @override
  User get session;
  @override
  Settings get settings;
  @override
  @JsonKey(ignore: true)
  _$SeriesStateCopyWith<_SeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
