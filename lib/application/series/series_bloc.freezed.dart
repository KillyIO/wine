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

  DataSet dataSet() {
    return const DataSet();
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

  SeriesViewsUpdated seriesViewsUpdated() {
    return const SeriesViewsUpdated();
  }

  SessionFetched sessionFetched() {
    return const SessionFetched();
  }

  SettingsFetched settingsFetched() {
    return const SettingsFetched();
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return authorLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return authorLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return authorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return authorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return bookmarkButtonPressed(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return bookmarkButtonPressed?.call(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return bookmarkButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
abstract class $DataSetCopyWith<$Res> {
  factory $DataSetCopyWith(DataSet value, $Res Function(DataSet) then) =
      _$DataSetCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataSetCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $DataSetCopyWith<$Res> {
  _$DataSetCopyWithImpl(DataSet _value, $Res Function(DataSet) _then)
      : super(_value, (v) => _then(v as DataSet));

  @override
  DataSet get _value => super._value as DataSet;
}

/// @nodoc

class _$DataSet implements DataSet {
  const _$DataSet();

  @override
  String toString() {
    return 'SeriesEvent.dataSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DataSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return dataSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return dataSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    required TResult orElse(),
  }) {
    if (dataSet != null) {
      return dataSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return dataSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return dataSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    required TResult orElse(),
  }) {
    if (dataSet != null) {
      return dataSet(this);
    }
    return orElse();
  }
}

abstract class DataSet implements SeriesEvent {
  const factory DataSet() = _$DataSet;
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return launchWithID(id, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return launchWithID?.call(id, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return launchWithID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return launchWithID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return likeButtonPressed(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return likeButtonPressed?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return likeButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
abstract class $SeriesViewsUpdatedCopyWith<$Res> {
  factory $SeriesViewsUpdatedCopyWith(
          SeriesViewsUpdated value, $Res Function(SeriesViewsUpdated) then) =
      _$SeriesViewsUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesViewsUpdatedCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements $SeriesViewsUpdatedCopyWith<$Res> {
  _$SeriesViewsUpdatedCopyWithImpl(
      SeriesViewsUpdated _value, $Res Function(SeriesViewsUpdated) _then)
      : super(_value, (v) => _then(v as SeriesViewsUpdated));

  @override
  SeriesViewsUpdated get _value => super._value as SeriesViewsUpdated;
}

/// @nodoc

class _$SeriesViewsUpdated implements SeriesViewsUpdated {
  const _$SeriesViewsUpdated();

  @override
  String toString() {
    return 'SeriesEvent.seriesViewsUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SeriesViewsUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorLoaded,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return seriesViewsUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return seriesViewsUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
    required TResult orElse(),
  }) {
    if (seriesViewsUpdated != null) {
      return seriesViewsUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return seriesViewsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return seriesViewsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    required TResult orElse(),
  }) {
    if (seriesViewsUpdated != null) {
      return seriesViewsUpdated(this);
    }
    return orElse();
  }
}

abstract class SeriesViewsUpdated implements SeriesEvent {
  const factory SeriesViewsUpdated() = _$SeriesViewsUpdated;
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
    required TResult Function() dataSet,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function(bool isLiked) likeButtonPressed,
    required TResult Function() seriesViewsUpdated,
    required TResult Function() sessionFetched,
    required TResult Function() settingsFetched,
  }) {
    return settingsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
  }) {
    return settingsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorLoaded,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function()? dataSet,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function(bool isLiked)? likeButtonPressed,
    TResult Function()? seriesViewsUpdated,
    TResult Function()? sessionFetched,
    TResult Function()? settingsFetched,
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
    required TResult Function(DataSet value) dataSet,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
    required TResult Function(SeriesViewsUpdated value) seriesViewsUpdated,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
  }) {
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
  }) {
    return settingsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(DataSet value)? dataSet,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    TResult Function(SeriesViewsUpdated value)? seriesViewsUpdated,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
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
class _$SeriesStateTearOff {
  const _$SeriesStateTearOff();

  _SeriesState call(
      {required User author,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isBookmarked,
      required bool isLiked,
      required bool isProcessing,
      required Series series,
      required User session,
      required Settings settings}) {
    return _SeriesState(
      author: author,
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
  User get author => throw _privateConstructorUsedError;
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
      {User author,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isBookmarked,
      bool isLiked,
      bool isProcessing,
      Series series,
      User session,
      Settings settings});

  $UserCopyWith<$Res> get author;
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
    Object? author = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
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
      {User author,
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
    Object? author = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
    Object? settings = freezed,
  }) {
    return _then(_SeriesState(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
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
      {required this.author,
      required this.failureOption,
      required this.isBookmarked,
      required this.isLiked,
      required this.isProcessing,
      required this.series,
      required this.session,
      required this.settings});

  @override
  final User author;
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
    return 'SeriesState(author: $author, failureOption: $failureOption, isBookmarked: $isBookmarked, isLiked: $isLiked, isProcessing: $isProcessing, series: $series, session: $session, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeriesState &&
            const DeepCollectionEquality().equals(other.author, author) &&
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
      const DeepCollectionEquality().hash(author),
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
      {required User author,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isBookmarked,
      required bool isLiked,
      required bool isProcessing,
      required Series series,
      required User session,
      required Settings settings}) = _$_SeriesState;

  @override
  User get author;
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
