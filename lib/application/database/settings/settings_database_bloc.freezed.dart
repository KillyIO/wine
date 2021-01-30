// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsDatabaseEventTearOff {
  const _$SettingsDatabaseEventTearOff();

// ignore: unused_element
  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

// ignore: unused_element
  SessionFetchedEVT sessionFetchedEVT() {
    return const SessionFetchedEVT();
  }

// ignore: unused_element
  SettingsLaunchedEVT settingsLaunchedEVT() {
    return const SettingsLaunchedEVT();
  }

// ignore: unused_element
  UserSignedOutEVT userSignedOutEVT() {
    return const UserSignedOutEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsDatabaseEvent = _$SettingsDatabaseEventTearOff();

/// @nodoc
mixin _$SettingsDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult sessionFetchedEVT(),
    @required TResult settingsLaunchedEVT(),
    @required TResult userSignedOutEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult sessionFetchedEVT(),
    TResult settingsLaunchedEVT(),
    TResult userSignedOutEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required TResult userSignedOutEVT(UserSignedOutEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    TResult userSignedOutEVT(UserSignedOutEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsDatabaseEventCopyWith<$Res> {
  factory $SettingsDatabaseEventCopyWith(SettingsDatabaseEvent value,
          $Res Function(SettingsDatabaseEvent) then) =
      _$SettingsDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SettingsDatabaseEventCopyWith<$Res> {
  _$SettingsDatabaseEventCopyWithImpl(this._value, this._then);

  final SettingsDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsDatabaseEvent) _then;
}

/// @nodoc
abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $ResetBlocEVTCopyWith<$Res> {
  _$ResetBlocEVTCopyWithImpl(
      ResetBlocEVT _value, $Res Function(ResetBlocEVT) _then)
      : super(_value, (v) => _then(v as ResetBlocEVT));

  @override
  ResetBlocEVT get _value => super._value as ResetBlocEVT;
}

/// @nodoc
class _$ResetBlocEVT implements ResetBlocEVT {
  const _$ResetBlocEVT();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.resetBlocEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBlocEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult sessionFetchedEVT(),
    @required TResult settingsLaunchedEVT(),
    @required TResult userSignedOutEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult sessionFetchedEVT(),
    TResult settingsLaunchedEVT(),
    TResult userSignedOutEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required TResult userSignedOutEVT(UserSignedOutEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    TResult userSignedOutEVT(UserSignedOutEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements SettingsDatabaseEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

/// @nodoc
abstract class $SessionFetchedEVTCopyWith<$Res> {
  factory $SessionFetchedEVTCopyWith(
          SessionFetchedEVT value, $Res Function(SessionFetchedEVT) then) =
      _$SessionFetchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SessionFetchedEVTCopyWith<$Res> {
  _$SessionFetchedEVTCopyWithImpl(
      SessionFetchedEVT _value, $Res Function(SessionFetchedEVT) _then)
      : super(_value, (v) => _then(v as SessionFetchedEVT));

  @override
  SessionFetchedEVT get _value => super._value as SessionFetchedEVT;
}

/// @nodoc
class _$SessionFetchedEVT implements SessionFetchedEVT {
  const _$SessionFetchedEVT();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.sessionFetchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SessionFetchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult sessionFetchedEVT(),
    @required TResult settingsLaunchedEVT(),
    @required TResult userSignedOutEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return sessionFetchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult sessionFetchedEVT(),
    TResult settingsLaunchedEVT(),
    TResult userSignedOutEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required TResult userSignedOutEVT(UserSignedOutEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    TResult userSignedOutEVT(UserSignedOutEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class SessionFetchedEVT implements SettingsDatabaseEvent {
  const factory SessionFetchedEVT() = _$SessionFetchedEVT;
}

/// @nodoc
abstract class $SettingsLaunchedEVTCopyWith<$Res> {
  factory $SettingsLaunchedEVTCopyWith(
          SettingsLaunchedEVT value, $Res Function(SettingsLaunchedEVT) then) =
      _$SettingsLaunchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsLaunchedEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SettingsLaunchedEVTCopyWith<$Res> {
  _$SettingsLaunchedEVTCopyWithImpl(
      SettingsLaunchedEVT _value, $Res Function(SettingsLaunchedEVT) _then)
      : super(_value, (v) => _then(v as SettingsLaunchedEVT));

  @override
  SettingsLaunchedEVT get _value => super._value as SettingsLaunchedEVT;
}

/// @nodoc
class _$SettingsLaunchedEVT implements SettingsLaunchedEVT {
  const _$SettingsLaunchedEVT();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.settingsLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult sessionFetchedEVT(),
    @required TResult settingsLaunchedEVT(),
    @required TResult userSignedOutEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return settingsLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult sessionFetchedEVT(),
    TResult settingsLaunchedEVT(),
    TResult userSignedOutEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunchedEVT != null) {
      return settingsLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required TResult userSignedOutEVT(UserSignedOutEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return settingsLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    TResult userSignedOutEVT(UserSignedOutEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunchedEVT != null) {
      return settingsLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class SettingsLaunchedEVT implements SettingsDatabaseEvent {
  const factory SettingsLaunchedEVT() = _$SettingsLaunchedEVT;
}

/// @nodoc
abstract class $UserSignedOutEVTCopyWith<$Res> {
  factory $UserSignedOutEVTCopyWith(
          UserSignedOutEVT value, $Res Function(UserSignedOutEVT) then) =
      _$UserSignedOutEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedOutEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $UserSignedOutEVTCopyWith<$Res> {
  _$UserSignedOutEVTCopyWithImpl(
      UserSignedOutEVT _value, $Res Function(UserSignedOutEVT) _then)
      : super(_value, (v) => _then(v as UserSignedOutEVT));

  @override
  UserSignedOutEVT get _value => super._value as UserSignedOutEVT;
}

/// @nodoc
class _$UserSignedOutEVT implements UserSignedOutEVT {
  const _$UserSignedOutEVT();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.userSignedOutEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOutEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult sessionFetchedEVT(),
    @required TResult settingsLaunchedEVT(),
    @required TResult userSignedOutEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return userSignedOutEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult sessionFetchedEVT(),
    TResult settingsLaunchedEVT(),
    TResult userSignedOutEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutEVT != null) {
      return userSignedOutEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required TResult userSignedOutEVT(UserSignedOutEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(sessionFetchedEVT != null);
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    return userSignedOutEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult settingsLaunchedEVT(SettingsLaunchedEVT value),
    TResult userSignedOutEVT(UserSignedOutEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutEVT != null) {
      return userSignedOutEVT(this);
    }
    return orElse();
  }
}

abstract class UserSignedOutEVT implements SettingsDatabaseEvent {
  const factory UserSignedOutEVT() = _$UserSignedOutEVT;
}

/// @nodoc
class _$SettingsDatabaseStateTearOff {
  const _$SettingsDatabaseStateTearOff();

// ignore: unused_element
  _SettingsDatabaseState call(
      {@required
          bool isUpdating,
      @required
          Config config,
      @required
          Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
              configDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Session session}) {
    return _SettingsDatabaseState(
      isUpdating: isUpdating,
      config: config,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption,
      session: session,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsDatabaseState = _$SettingsDatabaseStateTearOff();

/// @nodoc
mixin _$SettingsDatabaseState {
  bool get isUpdating;
  Config get config;
  Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      get configDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  Session get session;

  @JsonKey(ignore: true)
  $SettingsDatabaseStateCopyWith<SettingsDatabaseState> get copyWith;
}

/// @nodoc
abstract class $SettingsDatabaseStateCopyWith<$Res> {
  factory $SettingsDatabaseStateCopyWith(SettingsDatabaseState value,
          $Res Function(SettingsDatabaseState) then) =
      _$SettingsDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      Config config,
      Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
          configDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Session session});
}

/// @nodoc
class _$SettingsDatabaseStateCopyWithImpl<$Res>
    implements $SettingsDatabaseStateCopyWith<$Res> {
  _$SettingsDatabaseStateCopyWithImpl(this._value, this._then);

  final SettingsDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SettingsDatabaseState) _then;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object config = freezed,
    Object configDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      config: config == freezed ? _value.config : config as Config,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption == freezed
              ? _value.configDatabaseFailureOrSuccessOption
              : configDatabaseFailureOrSuccessOption as Option<
                  Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

/// @nodoc
abstract class _$SettingsDatabaseStateCopyWith<$Res>
    implements $SettingsDatabaseStateCopyWith<$Res> {
  factory _$SettingsDatabaseStateCopyWith(_SettingsDatabaseState value,
          $Res Function(_SettingsDatabaseState) then) =
      __$SettingsDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUpdating,
      Config config,
      Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
          configDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Session session});
}

/// @nodoc
class __$SettingsDatabaseStateCopyWithImpl<$Res>
    extends _$SettingsDatabaseStateCopyWithImpl<$Res>
    implements _$SettingsDatabaseStateCopyWith<$Res> {
  __$SettingsDatabaseStateCopyWithImpl(_SettingsDatabaseState _value,
      $Res Function(_SettingsDatabaseState) _then)
      : super(_value, (v) => _then(v as _SettingsDatabaseState));

  @override
  _SettingsDatabaseState get _value => super._value as _SettingsDatabaseState;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object config = freezed,
    Object configDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_SettingsDatabaseState(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      config: config == freezed ? _value.config : config as Config,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption == freezed
              ? _value.configDatabaseFailureOrSuccessOption
              : configDatabaseFailureOrSuccessOption as Option<
                  Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

/// @nodoc
class _$_SettingsDatabaseState implements _SettingsDatabaseState {
  const _$_SettingsDatabaseState(
      {@required this.isUpdating,
      @required this.config,
      @required this.configDatabaseFailureOrSuccessOption,
      @required this.sessionDatabaseFailureOrSuccessOption,
      @required this.session})
      : assert(isUpdating != null),
        assert(config != null),
        assert(configDatabaseFailureOrSuccessOption != null),
        assert(sessionDatabaseFailureOrSuccessOption != null),
        assert(session != null);

  @override
  final bool isUpdating;
  @override
  final Config config;
  @override
  final Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      configDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      sessionDatabaseFailureOrSuccessOption;
  @override
  final Session session;

  @override
  String toString() {
    return 'SettingsDatabaseState(isUpdating: $isUpdating, config: $config, configDatabaseFailureOrSuccessOption: $configDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption: $sessionDatabaseFailureOrSuccessOption, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsDatabaseState &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)) &&
            (identical(other.configDatabaseFailureOrSuccessOption,
                    configDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.configDatabaseFailureOrSuccessOption,
                    configDatabaseFailureOrSuccessOption)) &&
            (identical(other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(config) ^
      const DeepCollectionEquality()
          .hash(configDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(sessionDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(session);

  @JsonKey(ignore: true)
  @override
  _$SettingsDatabaseStateCopyWith<_SettingsDatabaseState> get copyWith =>
      __$SettingsDatabaseStateCopyWithImpl<_SettingsDatabaseState>(
          this, _$identity);
}

abstract class _SettingsDatabaseState implements SettingsDatabaseState {
  const factory _SettingsDatabaseState(
      {@required
          bool isUpdating,
      @required
          Config config,
      @required
          Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
              configDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Session session}) = _$_SettingsDatabaseState;

  @override
  bool get isUpdating;
  @override
  Config get config;
  @override
  Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      get configDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  @override
  Session get session;
  @override
  @JsonKey(ignore: true)
  _$SettingsDatabaseStateCopyWith<_SettingsDatabaseState> get copyWith;
}
