// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsDatabaseEventTearOff {
  const _$SettingsDatabaseEventTearOff();

  SettingsLaunched settingsLaunched() {
    return const SettingsLaunched();
  }

  UserSignedOut userSignedOut() {
    return const UserSignedOut();
  }

  ResetSettingsDatabaseBloc resetSettingsDatabaseBloc() {
    return const ResetSettingsDatabaseBloc();
  }
}

// ignore: unused_element
const $SettingsDatabaseEvent = _$SettingsDatabaseEventTearOff();

mixin _$SettingsDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result settingsLaunched(),
    @required Result userSignedOut(),
    @required Result resetSettingsDatabaseBloc(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunched(),
    Result userSignedOut(),
    Result resetSettingsDatabaseBloc(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunched(SettingsLaunched value),
    @required Result userSignedOut(UserSignedOut value),
    @required Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunched(SettingsLaunched value),
    Result userSignedOut(UserSignedOut value),
    Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
    @required Result orElse(),
  });
}

abstract class $SettingsDatabaseEventCopyWith<$Res> {
  factory $SettingsDatabaseEventCopyWith(SettingsDatabaseEvent value,
          $Res Function(SettingsDatabaseEvent) then) =
      _$SettingsDatabaseEventCopyWithImpl<$Res>;
}

class _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SettingsDatabaseEventCopyWith<$Res> {
  _$SettingsDatabaseEventCopyWithImpl(this._value, this._then);

  final SettingsDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsDatabaseEvent) _then;
}

abstract class $SettingsLaunchedCopyWith<$Res> {
  factory $SettingsLaunchedCopyWith(
          SettingsLaunched value, $Res Function(SettingsLaunched) then) =
      _$SettingsLaunchedCopyWithImpl<$Res>;
}

class _$SettingsLaunchedCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SettingsLaunchedCopyWith<$Res> {
  _$SettingsLaunchedCopyWithImpl(
      SettingsLaunched _value, $Res Function(SettingsLaunched) _then)
      : super(_value, (v) => _then(v as SettingsLaunched));

  @override
  SettingsLaunched get _value => super._value as SettingsLaunched;
}

class _$SettingsLaunched implements SettingsLaunched {
  const _$SettingsLaunched();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.settingsLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result settingsLaunched(),
    @required Result userSignedOut(),
    @required Result resetSettingsDatabaseBloc(),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return settingsLaunched();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunched(),
    Result userSignedOut(),
    Result resetSettingsDatabaseBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunched != null) {
      return settingsLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunched(SettingsLaunched value),
    @required Result userSignedOut(UserSignedOut value),
    @required Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return settingsLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunched(SettingsLaunched value),
    Result userSignedOut(UserSignedOut value),
    Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunched != null) {
      return settingsLaunched(this);
    }
    return orElse();
  }
}

abstract class SettingsLaunched implements SettingsDatabaseEvent {
  const factory SettingsLaunched() = _$SettingsLaunched;
}

abstract class $UserSignedOutCopyWith<$Res> {
  factory $UserSignedOutCopyWith(
          UserSignedOut value, $Res Function(UserSignedOut) then) =
      _$UserSignedOutCopyWithImpl<$Res>;
}

class _$UserSignedOutCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $UserSignedOutCopyWith<$Res> {
  _$UserSignedOutCopyWithImpl(
      UserSignedOut _value, $Res Function(UserSignedOut) _then)
      : super(_value, (v) => _then(v as UserSignedOut));

  @override
  UserSignedOut get _value => super._value as UserSignedOut;
}

class _$UserSignedOut implements UserSignedOut {
  const _$UserSignedOut();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.userSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result settingsLaunched(),
    @required Result userSignedOut(),
    @required Result resetSettingsDatabaseBloc(),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunched(),
    Result userSignedOut(),
    Result resetSettingsDatabaseBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunched(SettingsLaunched value),
    @required Result userSignedOut(UserSignedOut value),
    @required Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunched(SettingsLaunched value),
    Result userSignedOut(UserSignedOut value),
    Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class UserSignedOut implements SettingsDatabaseEvent {
  const factory UserSignedOut() = _$UserSignedOut;
}

abstract class $ResetSettingsDatabaseBlocCopyWith<$Res> {
  factory $ResetSettingsDatabaseBlocCopyWith(ResetSettingsDatabaseBloc value,
          $Res Function(ResetSettingsDatabaseBloc) then) =
      _$ResetSettingsDatabaseBlocCopyWithImpl<$Res>;
}

class _$ResetSettingsDatabaseBlocCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $ResetSettingsDatabaseBlocCopyWith<$Res> {
  _$ResetSettingsDatabaseBlocCopyWithImpl(ResetSettingsDatabaseBloc _value,
      $Res Function(ResetSettingsDatabaseBloc) _then)
      : super(_value, (v) => _then(v as ResetSettingsDatabaseBloc));

  @override
  ResetSettingsDatabaseBloc get _value =>
      super._value as ResetSettingsDatabaseBloc;
}

class _$ResetSettingsDatabaseBloc implements ResetSettingsDatabaseBloc {
  const _$ResetSettingsDatabaseBloc();

  @override
  String toString() {
    return 'SettingsDatabaseEvent.resetSettingsDatabaseBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetSettingsDatabaseBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result settingsLaunched(),
    @required Result userSignedOut(),
    @required Result resetSettingsDatabaseBloc(),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return resetSettingsDatabaseBloc();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunched(),
    Result userSignedOut(),
    Result resetSettingsDatabaseBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetSettingsDatabaseBloc != null) {
      return resetSettingsDatabaseBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunched(SettingsLaunched value),
    @required Result userSignedOut(UserSignedOut value),
    @required Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
  }) {
    assert(settingsLaunched != null);
    assert(userSignedOut != null);
    assert(resetSettingsDatabaseBloc != null);
    return resetSettingsDatabaseBloc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunched(SettingsLaunched value),
    Result userSignedOut(UserSignedOut value),
    Result resetSettingsDatabaseBloc(ResetSettingsDatabaseBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetSettingsDatabaseBloc != null) {
      return resetSettingsDatabaseBloc(this);
    }
    return orElse();
  }
}

abstract class ResetSettingsDatabaseBloc implements SettingsDatabaseEvent {
  const factory ResetSettingsDatabaseBloc() = _$ResetSettingsDatabaseBloc;
}

class _$SettingsDatabaseStateTearOff {
  const _$SettingsDatabaseStateTearOff();

  _SettingsDatabaseState call(
      {@required
          Session session,
      @required
          bool isUpdating,
      @required
          bool isSessionDeleted,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _SettingsDatabaseState(
      session: session,
      isUpdating: isUpdating,
      isSessionDeleted: isSessionDeleted,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SettingsDatabaseState = _$SettingsDatabaseStateTearOff();

mixin _$SettingsDatabaseState {
  Session get session;
  bool get isUpdating;
  bool get isSessionDeleted;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $SettingsDatabaseStateCopyWith<SettingsDatabaseState> get copyWith;
}

abstract class $SettingsDatabaseStateCopyWith<$Res> {
  factory $SettingsDatabaseStateCopyWith(SettingsDatabaseState value,
          $Res Function(SettingsDatabaseState) then) =
      _$SettingsDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Session session,
      bool isUpdating,
      bool isSessionDeleted,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$SettingsDatabaseStateCopyWithImpl<$Res>
    implements $SettingsDatabaseStateCopyWith<$Res> {
  _$SettingsDatabaseStateCopyWithImpl(this._value, this._then);

  final SettingsDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SettingsDatabaseState) _then;

  @override
  $Res call({
    Object session = freezed,
    Object isUpdating = freezed,
    Object isSessionDeleted = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as Session,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isSessionDeleted: isSessionDeleted == freezed
          ? _value.isSessionDeleted
          : isSessionDeleted as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$SettingsDatabaseStateCopyWith<$Res>
    implements $SettingsDatabaseStateCopyWith<$Res> {
  factory _$SettingsDatabaseStateCopyWith(_SettingsDatabaseState value,
          $Res Function(_SettingsDatabaseState) then) =
      __$SettingsDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Session session,
      bool isUpdating,
      bool isSessionDeleted,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

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
    Object session = freezed,
    Object isUpdating = freezed,
    Object isSessionDeleted = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsDatabaseState(
      session: session == freezed ? _value.session : session as Session,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isSessionDeleted: isSessionDeleted == freezed
          ? _value.isSessionDeleted
          : isSessionDeleted as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_SettingsDatabaseState implements _SettingsDatabaseState {
  const _$_SettingsDatabaseState(
      {@required this.session,
      @required this.isUpdating,
      @required this.isSessionDeleted,
      @required this.databaseFailureOrSuccessOption})
      : assert(session != null),
        assert(isUpdating != null),
        assert(isSessionDeleted != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final Session session;
  @override
  final bool isUpdating;
  @override
  final bool isSessionDeleted;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsDatabaseState(session: $session, isUpdating: $isUpdating, isSessionDeleted: $isSessionDeleted, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsDatabaseState &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.isSessionDeleted, isSessionDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSessionDeleted, isSessionDeleted)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(isSessionDeleted) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$SettingsDatabaseStateCopyWith<_SettingsDatabaseState> get copyWith =>
      __$SettingsDatabaseStateCopyWithImpl<_SettingsDatabaseState>(
          this, _$identity);
}

abstract class _SettingsDatabaseState implements SettingsDatabaseState {
  const factory _SettingsDatabaseState(
      {@required
          Session session,
      @required
          bool isUpdating,
      @required
          bool isSessionDeleted,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_SettingsDatabaseState;

  @override
  Session get session;
  @override
  bool get isUpdating;
  @override
  bool get isSessionDeleted;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$SettingsDatabaseStateCopyWith<_SettingsDatabaseState> get copyWith;
}
