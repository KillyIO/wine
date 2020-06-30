// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsDatabaseEventTearOff {
  const _$SettingsDatabaseEventTearOff();

  SettingsLaunchedEVT settingsLaunchedEVT() {
    return const SettingsLaunchedEVT();
  }

  UserSignedOutEVT userSignedOutEVT() {
    return const UserSignedOutEVT();
  }

  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }
}

// ignore: unused_element
const $SettingsDatabaseEvent = _$SettingsDatabaseEventTearOff();

mixin _$SettingsDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result settingsLaunchedEVT(),
    @required Result userSignedOutEVT(),
    @required Result resetBlocEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunchedEVT(),
    Result userSignedOutEVT(),
    Result resetBlocEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required Result userSignedOutEVT(UserSignedOutEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    Result userSignedOutEVT(UserSignedOutEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
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

abstract class $SettingsLaunchedEVTCopyWith<$Res> {
  factory $SettingsLaunchedEVTCopyWith(
          SettingsLaunchedEVT value, $Res Function(SettingsLaunchedEVT) then) =
      _$SettingsLaunchedEVTCopyWithImpl<$Res>;
}

class _$SettingsLaunchedEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $SettingsLaunchedEVTCopyWith<$Res> {
  _$SettingsLaunchedEVTCopyWithImpl(
      SettingsLaunchedEVT _value, $Res Function(SettingsLaunchedEVT) _then)
      : super(_value, (v) => _then(v as SettingsLaunchedEVT));

  @override
  SettingsLaunchedEVT get _value => super._value as SettingsLaunchedEVT;
}

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
  Result when<Result extends Object>({
    @required Result settingsLaunchedEVT(),
    @required Result userSignedOutEVT(),
    @required Result resetBlocEVT(),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return settingsLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunchedEVT(),
    Result userSignedOutEVT(),
    Result resetBlocEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunchedEVT != null) {
      return settingsLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required Result userSignedOutEVT(UserSignedOutEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return settingsLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    Result userSignedOutEVT(UserSignedOutEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    @required Result orElse(),
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

abstract class $UserSignedOutEVTCopyWith<$Res> {
  factory $UserSignedOutEVTCopyWith(
          UserSignedOutEVT value, $Res Function(UserSignedOutEVT) then) =
      _$UserSignedOutEVTCopyWithImpl<$Res>;
}

class _$UserSignedOutEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $UserSignedOutEVTCopyWith<$Res> {
  _$UserSignedOutEVTCopyWithImpl(
      UserSignedOutEVT _value, $Res Function(UserSignedOutEVT) _then)
      : super(_value, (v) => _then(v as UserSignedOutEVT));

  @override
  UserSignedOutEVT get _value => super._value as UserSignedOutEVT;
}

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
  Result when<Result extends Object>({
    @required Result settingsLaunchedEVT(),
    @required Result userSignedOutEVT(),
    @required Result resetBlocEVT(),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return userSignedOutEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunchedEVT(),
    Result userSignedOutEVT(),
    Result resetBlocEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutEVT != null) {
      return userSignedOutEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required Result userSignedOutEVT(UserSignedOutEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return userSignedOutEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    Result userSignedOutEVT(UserSignedOutEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    @required Result orElse(),
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

abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$SettingsDatabaseEventCopyWithImpl<$Res>
    implements $ResetBlocEVTCopyWith<$Res> {
  _$ResetBlocEVTCopyWithImpl(
      ResetBlocEVT _value, $Res Function(ResetBlocEVT) _then)
      : super(_value, (v) => _then(v as ResetBlocEVT));

  @override
  ResetBlocEVT get _value => super._value as ResetBlocEVT;
}

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
  Result when<Result extends Object>({
    @required Result settingsLaunchedEVT(),
    @required Result userSignedOutEVT(),
    @required Result resetBlocEVT(),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result settingsLaunchedEVT(),
    Result userSignedOutEVT(),
    Result resetBlocEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    @required Result userSignedOutEVT(UserSignedOutEVT value),
    @required Result resetBlocEVT(ResetBlocEVT value),
  }) {
    assert(settingsLaunchedEVT != null);
    assert(userSignedOutEVT != null);
    assert(resetBlocEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result settingsLaunchedEVT(SettingsLaunchedEVT value),
    Result userSignedOutEVT(UserSignedOutEVT value),
    Result resetBlocEVT(ResetBlocEVT value),
    @required Result orElse(),
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

class _$SettingsDatabaseStateTearOff {
  const _$SettingsDatabaseStateTearOff();

  _SettingsDatabaseState call(
      {@required
          Session session,
      @required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) {
    return _SettingsDatabaseState(
      session: session,
      isUpdating: isUpdating,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SettingsDatabaseState = _$SettingsDatabaseStateTearOff();

mixin _$SettingsDatabaseState {
  Session get session;
  bool get isUpdating;
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;

  $SettingsDatabaseStateCopyWith<SettingsDatabaseState> get copyWith;
}

abstract class $SettingsDatabaseStateCopyWith<$Res> {
  factory $SettingsDatabaseStateCopyWith(SettingsDatabaseState value,
          $Res Function(SettingsDatabaseState) then) =
      _$SettingsDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Session session,
      bool isUpdating,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
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
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as Session,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
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
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
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
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsDatabaseState(
      session: session == freezed ? _value.session : session as Session,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

class _$_SettingsDatabaseState implements _SettingsDatabaseState {
  const _$_SettingsDatabaseState(
      {@required this.session,
      @required this.isUpdating,
      @required this.databaseFailureOrSuccessOption})
      : assert(session != null),
        assert(isUpdating != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final Session session;
  @override
  final bool isUpdating;
  @override
  final Option<Either<DatabaseFailure, DatabaseSuccess>>
      databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsDatabaseState(session: $session, isUpdating: $isUpdating, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
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
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) = _$_SettingsDatabaseState;

  @override
  Session get session;
  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  @override
  _$SettingsDatabaseStateCopyWith<_SettingsDatabaseState> get copyWith;
}
