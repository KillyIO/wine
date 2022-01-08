// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LibraryEventTearOff {
  const _$LibraryEventTearOff();

  ChapterDeleted chapterDeleted(UniqueID uid) {
    return ChapterDeleted(
      uid,
    );
  }

  InitBloc initBloc() {
    return const InitBloc();
  }

  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }

  SeriesDeleted seriesDeleted(UniqueID uid) {
    return SeriesDeleted(
      uid,
    );
  }

  SessionFetched sessionFetched() {
    return const SessionFetched();
  }

  VerticalNavbarIndexChanged verticalNavbarIndexChanged(int index) {
    return VerticalNavbarIndexChanged(
      index,
    );
  }
}

/// @nodoc
const $LibraryEvent = _$LibraryEventTearOff();

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LibraryEventCopyWithImpl<$Res> implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

  final LibraryEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryEvent) _then;
}

/// @nodoc
abstract class $ChapterDeletedCopyWith<$Res> {
  factory $ChapterDeletedCopyWith(
          ChapterDeleted value, $Res Function(ChapterDeleted) then) =
      _$ChapterDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class _$ChapterDeletedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements $ChapterDeletedCopyWith<$Res> {
  _$ChapterDeletedCopyWithImpl(
      ChapterDeleted _value, $Res Function(ChapterDeleted) _then)
      : super(_value, (v) => _then(v as ChapterDeleted));

  @override
  ChapterDeleted get _value => super._value as ChapterDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(ChapterDeleted(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$ChapterDeleted implements ChapterDeleted {
  const _$ChapterDeleted(this.uid);

  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'LibraryEvent.chapterDeleted(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChapterDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $ChapterDeletedCopyWith<ChapterDeleted> get copyWith =>
      _$ChapterDeletedCopyWithImpl<ChapterDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return chapterDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return chapterDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (chapterDeleted != null) {
      return chapterDeleted(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return chapterDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return chapterDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (chapterDeleted != null) {
      return chapterDeleted(this);
    }
    return orElse();
  }
}

abstract class ChapterDeleted implements LibraryEvent {
  const factory ChapterDeleted(UniqueID uid) = _$ChapterDeleted;

  UniqueID get uid;
  @JsonKey(ignore: true)
  $ChapterDeletedCopyWith<ChapterDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitBlocCopyWith<$Res> {
  factory $InitBlocCopyWith(InitBloc value, $Res Function(InitBloc) then) =
      _$InitBlocCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitBlocCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements $InitBlocCopyWith<$Res> {
  _$InitBlocCopyWithImpl(InitBloc _value, $Res Function(InitBloc) _then)
      : super(_value, (v) => _then(v as InitBloc));

  @override
  InitBloc get _value => super._value as InitBloc;
}

/// @nodoc

class _$InitBloc implements InitBloc {
  const _$InitBloc();

  @override
  String toString() {
    return 'LibraryEvent.initBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return initBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return initBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return initBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return initBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc(this);
    }
    return orElse();
  }
}

abstract class InitBloc implements LibraryEvent {
  const factory InitBloc() = _$InitBloc;
}

/// @nodoc
abstract class $PageViewIndexChangedCopyWith<$Res> {
  factory $PageViewIndexChangedCopyWith(PageViewIndexChanged value,
          $Res Function(PageViewIndexChanged) then) =
      _$PageViewIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements $PageViewIndexChangedCopyWith<$Res> {
  _$PageViewIndexChangedCopyWithImpl(
      PageViewIndexChanged _value, $Res Function(PageViewIndexChanged) _then)
      : super(_value, (v) => _then(v as PageViewIndexChanged));

  @override
  PageViewIndexChanged get _value => super._value as PageViewIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(PageViewIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageViewIndexChanged implements PageViewIndexChanged {
  const _$PageViewIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LibraryEvent.pageViewIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageViewIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      _$PageViewIndexChangedCopyWithImpl<PageViewIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements LibraryEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDeletedCopyWith<$Res> {
  factory $SeriesDeletedCopyWith(
          SeriesDeleted value, $Res Function(SeriesDeleted) then) =
      _$SeriesDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class _$SeriesDeletedCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements $SeriesDeletedCopyWith<$Res> {
  _$SeriesDeletedCopyWithImpl(
      SeriesDeleted _value, $Res Function(SeriesDeleted) _then)
      : super(_value, (v) => _then(v as SeriesDeleted));

  @override
  SeriesDeleted get _value => super._value as SeriesDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(SeriesDeleted(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$SeriesDeleted implements SeriesDeleted {
  const _$SeriesDeleted(this.uid);

  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'LibraryEvent.seriesDeleted(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SeriesDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $SeriesDeletedCopyWith<SeriesDeleted> get copyWith =>
      _$SeriesDeletedCopyWithImpl<SeriesDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return seriesDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return seriesDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (seriesDeleted != null) {
      return seriesDeleted(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return seriesDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return seriesDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (seriesDeleted != null) {
      return seriesDeleted(this);
    }
    return orElse();
  }
}

abstract class SeriesDeleted implements LibraryEvent {
  const factory SeriesDeleted(UniqueID uid) = _$SeriesDeleted;

  UniqueID get uid;
  @JsonKey(ignore: true)
  $SeriesDeletedCopyWith<SeriesDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
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
    return 'LibraryEvent.sessionFetched()';
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
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
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
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements LibraryEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
abstract class $VerticalNavbarIndexChangedCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedCopyWith(VerticalNavbarIndexChanged value,
          $Res Function(VerticalNavbarIndexChanged) then) =
      _$VerticalNavbarIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$VerticalNavbarIndexChangedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements $VerticalNavbarIndexChangedCopyWith<$Res> {
  _$VerticalNavbarIndexChangedCopyWithImpl(VerticalNavbarIndexChanged _value,
      $Res Function(VerticalNavbarIndexChanged) _then)
      : super(_value, (v) => _then(v as VerticalNavbarIndexChanged));

  @override
  VerticalNavbarIndexChanged get _value =>
      super._value as VerticalNavbarIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(VerticalNavbarIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VerticalNavbarIndexChanged implements VerticalNavbarIndexChanged {
  const _$VerticalNavbarIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LibraryEvent.verticalNavbarIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerticalNavbarIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith =>
          _$VerticalNavbarIndexChangedCopyWithImpl<VerticalNavbarIndexChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) chapterDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(UniqueID uid) seriesDeleted,
    required TResult Function() sessionFetched,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? chapterDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(UniqueID uid)? seriesDeleted,
    TResult Function()? sessionFetched,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChapterDeleted value) chapterDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SeriesDeleted value) seriesDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChapterDeleted value)? chapterDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SeriesDeleted value)? seriesDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(this);
    }
    return orElse();
  }
}

abstract class VerticalNavbarIndexChanged implements LibraryEvent {
  const factory VerticalNavbarIndexChanged(int index) =
      _$VerticalNavbarIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LibraryStateTearOff {
  const _$LibraryStateTearOff();

  _LibraryState call(
      {required List<Series> bookmarkedSeriesList,
      required int currentPageViewIdx,
      required int currentVerticalNavbarIdx,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required List<Series> seriesList,
      required User session}) {
    return _LibraryState(
      bookmarkedSeriesList: bookmarkedSeriesList,
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
      failureOption: failureOption,
      isProcessing: isProcessing,
      seriesList: seriesList,
      session: session,
    );
  }
}

/// @nodoc
const $LibraryState = _$LibraryStateTearOff();

/// @nodoc
mixin _$LibraryState {
// required List<Chapter> bookmarkedSeriesList,
  List<Series> get bookmarkedSeriesList => throw _privateConstructorUsedError;
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  int get currentVerticalNavbarIdx =>
      throw _privateConstructorUsedError; // required List<Chapter> chapterList,
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  List<Series> get seriesList => throw _privateConstructorUsedError;
  User get session => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Series> bookmarkedSeriesList,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isProcessing,
      List<Series> seriesList,
      User session});

  $UserCopyWith<$Res> get session;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res> implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  final LibraryState _value;
  // ignore: unused_field
  final $Res Function(LibraryState) _then;

  @override
  $Res call({
    Object? bookmarkedSeriesList = freezed,
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? seriesList = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      bookmarkedSeriesList: bookmarkedSeriesList == freezed
          ? _value.bookmarkedSeriesList
          : bookmarkedSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      seriesList: seriesList == freezed
          ? _value.seriesList
          : seriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get session {
    return $UserCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc
abstract class _$LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$LibraryStateCopyWith(
          _LibraryState value, $Res Function(_LibraryState) then) =
      __$LibraryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Series> bookmarkedSeriesList,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isProcessing,
      List<Series> seriesList,
      User session});

  @override
  $UserCopyWith<$Res> get session;
}

/// @nodoc
class __$LibraryStateCopyWithImpl<$Res> extends _$LibraryStateCopyWithImpl<$Res>
    implements _$LibraryStateCopyWith<$Res> {
  __$LibraryStateCopyWithImpl(
      _LibraryState _value, $Res Function(_LibraryState) _then)
      : super(_value, (v) => _then(v as _LibraryState));

  @override
  _LibraryState get _value => super._value as _LibraryState;

  @override
  $Res call({
    Object? bookmarkedSeriesList = freezed,
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? seriesList = freezed,
    Object? session = freezed,
  }) {
    return _then(_LibraryState(
      bookmarkedSeriesList: bookmarkedSeriesList == freezed
          ? _value.bookmarkedSeriesList
          : bookmarkedSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      seriesList: seriesList == freezed
          ? _value.seriesList
          : seriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {required this.bookmarkedSeriesList,
      required this.currentPageViewIdx,
      required this.currentVerticalNavbarIdx,
      required this.failureOption,
      required this.isProcessing,
      required this.seriesList,
      required this.session});

  @override // required List<Chapter> bookmarkedSeriesList,
  final List<Series> bookmarkedSeriesList;
  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;
  @override // required List<Chapter> chapterList,
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final List<Series> seriesList;
  @override
  final User session;

  @override
  String toString() {
    return 'LibraryState(bookmarkedSeriesList: $bookmarkedSeriesList, currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx, failureOption: $failureOption, isProcessing: $isProcessing, seriesList: $seriesList, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LibraryState &&
            const DeepCollectionEquality()
                .equals(other.bookmarkedSeriesList, bookmarkedSeriesList) &&
            const DeepCollectionEquality()
                .equals(other.currentPageViewIdx, currentPageViewIdx) &&
            const DeepCollectionEquality().equals(
                other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality()
                .equals(other.seriesList, seriesList) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookmarkedSeriesList),
      const DeepCollectionEquality().hash(currentPageViewIdx),
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(seriesList),
      const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      __$LibraryStateCopyWithImpl<_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {required List<Series> bookmarkedSeriesList,
      required int currentPageViewIdx,
      required int currentVerticalNavbarIdx,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required List<Series> seriesList,
      required User session}) = _$_LibraryState;

  @override // required List<Chapter> bookmarkedSeriesList,
  List<Series> get bookmarkedSeriesList;
  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override // required List<Chapter> chapterList,
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  bool get isProcessing;
  @override
  List<Series> get seriesList;
  @override
  User get session;
  @override
  @JsonKey(ignore: true)
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
