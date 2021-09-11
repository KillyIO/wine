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

  InitBloc initBloc() {
    return const InitBloc();
  }

  SessionFetched sessionFetched(UniqueID uid) {
    return SessionFetched(
      uid,
    );
  }
}

/// @nodoc
const $LibraryEvent = _$LibraryEventTearOff();

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function(UniqueID uid) sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(SessionFetched value) sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
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
    return identical(this, other) || (other is InitBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function(UniqueID uid) sessionFetched,
  }) {
    return initBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
  }) {
    return initBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
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
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return initBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return initBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
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
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
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

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(SessionFetched(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$SessionFetched implements SessionFetched {
  const _$SessionFetched(this.uid);

  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'LibraryEvent.sessionFetched(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFetched &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  $SessionFetchedCopyWith<SessionFetched> get copyWith =>
      _$SessionFetchedCopyWithImpl<SessionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function(UniqueID uid) sessionFetched,
  }) {
    return sessionFetched(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
  }) {
    return sessionFetched?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function(UniqueID uid)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements LibraryEvent {
  const factory SessionFetched(UniqueID uid) = _$SessionFetched;

  UniqueID get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionFetchedCopyWith<SessionFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LibraryStateTearOff {
  const _$LibraryStateTearOff();

  _LibraryState call(
      {required List<Series> bookmarkedSeriesList,
      required Option<Result<None, CoreFailure>> failureOption,
      required bool isProcessing,
      required List<Series> seriesList,
      required User session}) {
    return _LibraryState(
      bookmarkedSeriesList: bookmarkedSeriesList,
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
  List<Series> get bookmarkedSeriesList =>
      throw _privateConstructorUsedError; // required List<Chapter> chapterList,
  Option<Result<None, CoreFailure>> get failureOption =>
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
      Option<Result<None, CoreFailure>> failureOption,
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
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None, CoreFailure>>,
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
      Option<Result<None, CoreFailure>> failureOption,
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
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None, CoreFailure>>,
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
      required this.failureOption,
      required this.isProcessing,
      required this.seriesList,
      required this.session});

  @override // required List<Chapter> bookmarkedSeriesList,
  final List<Series> bookmarkedSeriesList;
  @override // required List<Chapter> chapterList,
  final Option<Result<None, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final List<Series> seriesList;
  @override
  final User session;

  @override
  String toString() {
    return 'LibraryState(bookmarkedSeriesList: $bookmarkedSeriesList, failureOption: $failureOption, isProcessing: $isProcessing, seriesList: $seriesList, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LibraryState &&
            (identical(other.bookmarkedSeriesList, bookmarkedSeriesList) ||
                const DeepCollectionEquality().equals(
                    other.bookmarkedSeriesList, bookmarkedSeriesList)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.seriesList, seriesList) ||
                const DeepCollectionEquality()
                    .equals(other.seriesList, seriesList)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarkedSeriesList) ^
      const DeepCollectionEquality().hash(failureOption) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(seriesList) ^
      const DeepCollectionEquality().hash(session);

  @JsonKey(ignore: true)
  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      __$LibraryStateCopyWithImpl<_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {required List<Series> bookmarkedSeriesList,
      required Option<Result<None, CoreFailure>> failureOption,
      required bool isProcessing,
      required List<Series> seriesList,
      required User session}) = _$_LibraryState;

  @override // required List<Chapter> bookmarkedSeriesList,
  List<Series> get bookmarkedSeriesList => throw _privateConstructorUsedError;
  @override // required List<Chapter> chapterList,
  Option<Result<None, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  List<Series> get seriesList => throw _privateConstructorUsedError;
  @override
  User get session => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
