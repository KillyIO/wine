// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  InitBloc initBloc() {
    return const InitBloc();
  }

  LoggedOut loggedOut() {
    return const LoggedOut();
  }

  LogOutPressed logOutPressed() {
    return const LogOutPressed();
  }

  SessionCreated sessionCreated() {
    return const SessionCreated();
  }

  SessionDeleted sessionDeleted() {
    return const SessionDeleted();
  }

  SessionFetched sessionFetched() {
    return const SessionFetched();
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class $InitBlocCopyWith<$Res> {
  factory $InitBlocCopyWith(InitBloc value, $Res Function(InitBloc) then) =
      _$InitBlocCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitBlocCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
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
    return 'SettingsEvent.initBloc()';
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
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return initBloc();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
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
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return initBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc(this);
    }
    return orElse();
  }
}

abstract class InitBloc implements SettingsEvent {
  const factory InitBloc() = _$InitBloc;
}

/// @nodoc
abstract class $LoggedOutCopyWith<$Res> {
  factory $LoggedOutCopyWith(LoggedOut value, $Res Function(LoggedOut) then) =
      _$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedOutCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements $LoggedOutCopyWith<$Res> {
  _$LoggedOutCopyWithImpl(LoggedOut _value, $Res Function(LoggedOut) _then)
      : super(_value, (v) => _then(v as LoggedOut));

  @override
  LoggedOut get _value => super._value as LoggedOut;
}

/// @nodoc

class _$LoggedOut implements LoggedOut {
  const _$LoggedOut();

  @override
  String toString() {
    return 'SettingsEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements SettingsEvent {
  const factory LoggedOut() = _$LoggedOut;
}

/// @nodoc
abstract class $LogOutPressedCopyWith<$Res> {
  factory $LogOutPressedCopyWith(
          LogOutPressed value, $Res Function(LogOutPressed) then) =
      _$LogOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogOutPressedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $LogOutPressedCopyWith<$Res> {
  _$LogOutPressedCopyWithImpl(
      LogOutPressed _value, $Res Function(LogOutPressed) _then)
      : super(_value, (v) => _then(v as LogOutPressed));

  @override
  LogOutPressed get _value => super._value as LogOutPressed;
}

/// @nodoc

class _$LogOutPressed implements LogOutPressed {
  const _$LogOutPressed();

  @override
  String toString() {
    return 'SettingsEvent.logOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return logOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return logOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed(this);
    }
    return orElse();
  }
}

abstract class LogOutPressed implements SettingsEvent {
  const factory LogOutPressed() = _$LogOutPressed;
}

/// @nodoc
abstract class $SessionCreatedCopyWith<$Res> {
  factory $SessionCreatedCopyWith(
          SessionCreated value, $Res Function(SessionCreated) then) =
      _$SessionCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionCreatedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SessionCreatedCopyWith<$Res> {
  _$SessionCreatedCopyWithImpl(
      SessionCreated _value, $Res Function(SessionCreated) _then)
      : super(_value, (v) => _then(v as SessionCreated));

  @override
  SessionCreated get _value => super._value as SessionCreated;
}

/// @nodoc

class _$SessionCreated implements SessionCreated {
  const _$SessionCreated();

  @override
  String toString() {
    return 'SettingsEvent.sessionCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return sessionCreated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionCreated != null) {
      return sessionCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionCreated != null) {
      return sessionCreated(this);
    }
    return orElse();
  }
}

abstract class SessionCreated implements SettingsEvent {
  const factory SessionCreated() = _$SessionCreated;
}

/// @nodoc
abstract class $SessionDeletedCopyWith<$Res> {
  factory $SessionDeletedCopyWith(
          SessionDeleted value, $Res Function(SessionDeleted) then) =
      _$SessionDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionDeletedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements $SessionDeletedCopyWith<$Res> {
  _$SessionDeletedCopyWithImpl(
      SessionDeleted _value, $Res Function(SessionDeleted) _then)
      : super(_value, (v) => _then(v as SessionDeleted));

  @override
  SessionDeleted get _value => super._value as SessionDeleted;
}

/// @nodoc

class _$SessionDeleted implements SessionDeleted {
  const _$SessionDeleted();

  @override
  String toString() {
    return 'SettingsEvent.sessionDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return sessionDeleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionDeleted != null) {
      return sessionDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionDeleted != null) {
      return sessionDeleted(this);
    }
    return orElse();
  }
}

abstract class SessionDeleted implements SettingsEvent {
  const factory SessionDeleted() = _$SessionDeleted;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
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
    return 'SettingsEvent.sessionFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loggedOut,
    required TResult Function() logOutPressed,
    required TResult Function() sessionCreated,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loggedOut,
    TResult Function()? logOutPressed,
    TResult Function()? sessionCreated,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
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
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionCreated value) sessionCreated,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionCreated value)? sessionCreated,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SettingsEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isLoggedOut,
      required bool isProcessing,
      required Settings settings,
      required String username}) {
    return _SettingsState(
      failureOption: failureOption,
      isLoggedOut: isLoggedOut,
      isProcessing: isProcessing,
      settings: settings,
      username: username,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isLoggedOut => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Result<dynamic, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? failureOption = freezed,
    Object? isLoggedOut = freezed,
    Object? isProcessing = freezed,
    Object? settings = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Result<dynamic, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? failureOption = freezed,
    Object? isLoggedOut = freezed,
    Object? isProcessing = freezed,
    Object? settings = freezed,
    Object? username = freezed,
  }) {
    return _then(_SettingsState(
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.failureOption,
      required this.isLoggedOut,
      required this.isProcessing,
      required this.settings,
      required this.username});

  @override
  final Option<Result<dynamic, CoreFailure>> failureOption;
  @override
  final bool isLoggedOut;
  @override
  final bool isProcessing;
  @override
  final Settings settings;
  @override
  final String username;

  @override
  String toString() {
    return 'SettingsState(failureOption: $failureOption, isLoggedOut: $isLoggedOut, isProcessing: $isProcessing, settings: $settings, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)) &&
            (identical(other.isLoggedOut, isLoggedOut) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggedOut, isLoggedOut)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOption) ^
      const DeepCollectionEquality().hash(isLoggedOut) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isLoggedOut,
      required bool isProcessing,
      required Settings settings,
      required String username}) = _$_SettingsState;

  @override
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoggedOut => throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  Settings get settings => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
