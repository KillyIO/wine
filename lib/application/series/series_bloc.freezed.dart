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

  InitBloc launchWithID(UniqueID id, {Series? series}) {
    return InitBloc(
      id,
      series: series,
    );
  }
}

/// @nodoc
const $SeriesEvent = _$SeriesEventTearOff();

/// @nodoc
mixin _$SeriesEvent {
  UniqueID get id => throw _privateConstructorUsedError;
  Series? get series => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID id, Series? series) launchWithID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID id, Series? series)? launchWithID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID id, Series? series)? launchWithID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) launchWithID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitBloc value)? launchWithID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? launchWithID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesEventCopyWith<SeriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
          SeriesEvent value, $Res Function(SeriesEvent) then) =
      _$SeriesEventCopyWithImpl<$Res>;
  $Res call({UniqueID id, Series? series});

  $SeriesCopyWith<$Res>? get series;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res> implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  final SeriesEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
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
abstract class $InitBlocCopyWith<$Res> implements $SeriesEventCopyWith<$Res> {
  factory $InitBlocCopyWith(InitBloc value, $Res Function(InitBloc) then) =
      _$InitBlocCopyWithImpl<$Res>;
  @override
  $Res call({UniqueID id, Series? series});

  @override
  $SeriesCopyWith<$Res>? get series;
}

/// @nodoc
class _$InitBlocCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements $InitBlocCopyWith<$Res> {
  _$InitBlocCopyWithImpl(InitBloc _value, $Res Function(InitBloc) _then)
      : super(_value, (v) => _then(v as InitBloc));

  @override
  InitBloc get _value => super._value as InitBloc;

  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(InitBloc(
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
}

/// @nodoc

class _$InitBloc implements InitBloc {
  const _$InitBloc(this.id, {this.series});

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
            other is InitBloc &&
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
  $InitBlocCopyWith<InitBloc> get copyWith =>
      _$InitBlocCopyWithImpl<InitBloc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID id, Series? series) launchWithID,
  }) {
    return launchWithID(id, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID id, Series? series)? launchWithID,
  }) {
    return launchWithID?.call(id, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID id, Series? series)? launchWithID,
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
    required TResult Function(InitBloc value) launchWithID,
  }) {
    return launchWithID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitBloc value)? launchWithID,
  }) {
    return launchWithID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? launchWithID,
    required TResult orElse(),
  }) {
    if (launchWithID != null) {
      return launchWithID(this);
    }
    return orElse();
  }
}

abstract class InitBloc implements SeriesEvent {
  const factory InitBloc(UniqueID id, {Series? series}) = _$InitBloc;

  @override
  UniqueID get id;
  @override
  Series? get series;
  @override
  @JsonKey(ignore: true)
  $InitBlocCopyWith<InitBloc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SeriesStateTearOff {
  const _$SeriesStateTearOff();

  _SeriesState call(
      {required User author,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required Series series,
      required User session}) {
    return _SeriesState(
      author: author,
      failureOption: failureOption,
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
      required this.series,
      required this.session});

  @override
  final User author;
  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final Series series;
  @override
  final User session;

  @override
  String toString() {
    return 'SeriesState(author: $author, failureOption: $failureOption, series: $series, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeriesState &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(failureOption),
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
      required Series series,
      required User session}) = _$_SeriesState;

  @override
  User get author;
  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  Series get series;
  @override
  User get session;
  @override
  @JsonKey(ignore: true)
  _$SeriesStateCopyWith<_SeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
