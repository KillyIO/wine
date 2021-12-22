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

  FetchSession fetchSession() {
    return const FetchSession();
  }

  LaunchWithID launchWithID(UniqueID id, {Series? series}) {
    return LaunchWithID(
      id,
      series: series,
    );
  }

  LoadAuthor loadAuthor() {
    return const LoadAuthor();
  }
}

/// @nodoc
const $SeriesEvent = _$SeriesEventTearOff();

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSession,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function() loadAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSession value) fetchSession,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LoadAuthor value) loadAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
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
abstract class $FetchSessionCopyWith<$Res> {
  factory $FetchSessionCopyWith(
          FetchSession value, $Res Function(FetchSession) then) =
      _$FetchSessionCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchSessionCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $FetchSessionCopyWith<$Res> {
  _$FetchSessionCopyWithImpl(
      FetchSession _value, $Res Function(FetchSession) _then)
      : super(_value, (v) => _then(v as FetchSession));

  @override
  FetchSession get _value => super._value as FetchSession;
}

/// @nodoc

class _$FetchSession implements FetchSession {
  const _$FetchSession();

  @override
  String toString() {
    return 'SeriesEvent.fetchSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSession,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function() loadAuthor,
  }) {
    return fetchSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
  }) {
    return fetchSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
    required TResult orElse(),
  }) {
    if (fetchSession != null) {
      return fetchSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSession value) fetchSession,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LoadAuthor value) loadAuthor,
  }) {
    return fetchSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
  }) {
    return fetchSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
    required TResult orElse(),
  }) {
    if (fetchSession != null) {
      return fetchSession(this);
    }
    return orElse();
  }
}

abstract class FetchSession implements SeriesEvent {
  const factory FetchSession() = _$FetchSession;
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
    required TResult Function() fetchSession,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function() loadAuthor,
  }) {
    return launchWithID(id, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
  }) {
    return launchWithID?.call(id, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
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
    required TResult Function(FetchSession value) fetchSession,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LoadAuthor value) loadAuthor,
  }) {
    return launchWithID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
  }) {
    return launchWithID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
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
abstract class $LoadAuthorCopyWith<$Res> {
  factory $LoadAuthorCopyWith(
          LoadAuthor value, $Res Function(LoadAuthor) then) =
      _$LoadAuthorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAuthorCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $LoadAuthorCopyWith<$Res> {
  _$LoadAuthorCopyWithImpl(LoadAuthor _value, $Res Function(LoadAuthor) _then)
      : super(_value, (v) => _then(v as LoadAuthor));

  @override
  LoadAuthor get _value => super._value as LoadAuthor;
}

/// @nodoc

class _$LoadAuthor implements LoadAuthor {
  const _$LoadAuthor();

  @override
  String toString() {
    return 'SeriesEvent.loadAuthor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadAuthor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSession,
    required TResult Function(UniqueID id, Series? series) launchWithID,
    required TResult Function() loadAuthor,
  }) {
    return loadAuthor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
  }) {
    return loadAuthor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSession,
    TResult Function(UniqueID id, Series? series)? launchWithID,
    TResult Function()? loadAuthor,
    required TResult orElse(),
  }) {
    if (loadAuthor != null) {
      return loadAuthor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSession value) fetchSession,
    required TResult Function(LaunchWithID value) launchWithID,
    required TResult Function(LoadAuthor value) loadAuthor,
  }) {
    return loadAuthor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
  }) {
    return loadAuthor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSession value)? fetchSession,
    TResult Function(LaunchWithID value)? launchWithID,
    TResult Function(LoadAuthor value)? loadAuthor,
    required TResult orElse(),
  }) {
    if (loadAuthor != null) {
      return loadAuthor(this);
    }
    return orElse();
  }
}

abstract class LoadAuthor implements SeriesEvent {
  const factory LoadAuthor() = _$LoadAuthor;
}

/// @nodoc
class _$SeriesStateTearOff {
  const _$SeriesStateTearOff();

  _SeriesState call(
      {required User author,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required Series series,
      required User session}) {
    return _SeriesState(
      author: author,
      failureOption: failureOption,
      isProcessing: isProcessing,
      series: series,
      session: session,
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
  bool get isProcessing => throw _privateConstructorUsedError;
  Series get series => throw _privateConstructorUsedError;
  User get session => throw _privateConstructorUsedError;

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
      bool isProcessing,
      Series series,
      User session});

  $UserCopyWith<$Res> get author;
  $SeriesCopyWith<$Res> get series;
  $UserCopyWith<$Res> get session;
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
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
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
      bool isProcessing,
      Series series,
      User session});

  @override
  $UserCopyWith<$Res> get author;
  @override
  $SeriesCopyWith<$Res> get series;
  @override
  $UserCopyWith<$Res> get session;
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
    Object? isProcessing = freezed,
    Object? series = freezed,
    Object? session = freezed,
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
    ));
  }
}

/// @nodoc

class _$_SeriesState implements _SeriesState {
  const _$_SeriesState(
      {required this.author,
      required this.failureOption,
      required this.isProcessing,
      required this.series,
      required this.session});

  @override
  final User author;
  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final Series series;
  @override
  final User session;

  @override
  String toString() {
    return 'SeriesState(author: $author, failureOption: $failureOption, isProcessing: $isProcessing, series: $series, session: $session)';
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
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$SeriesStateCopyWith<_SeriesState> get copyWith =>
      __$SeriesStateCopyWithImpl<_SeriesState>(this, _$identity);
}

abstract class _SeriesState implements SeriesState {
  const factory _SeriesState(
      {required User author,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required Series series,
      required User session}) = _$_SeriesState;

  @override
  User get author;
  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  bool get isProcessing;
  @override
  Series get series;
  @override
  User get session;
  @override
  @JsonKey(ignore: true)
  _$SeriesStateCopyWith<_SeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
