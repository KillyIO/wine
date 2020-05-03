// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'splash_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashDatabaseEventTearOff {
  const _$SplashDatabaseEventTearOff();

  Authenticated authenticated({@required AccountStatus accountStatus}) {
    return Authenticated(
      accountStatus: accountStatus,
    );
  }

  LogoAnimationCompleted logoAnimationCompleted() {
    return const LogoAnimationCompleted();
  }
}

// ignore: unused_element
const $SplashDatabaseEvent = _$SplashDatabaseEventTearOff();

mixin _$SplashDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AccountStatus accountStatus),
    @required Result logoAnimationCompleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AccountStatus accountStatus),
    Result logoAnimationCompleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result logoAnimationCompleted(LogoAnimationCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result logoAnimationCompleted(LogoAnimationCompleted value),
    @required Result orElse(),
  });
}

abstract class $SplashDatabaseEventCopyWith<$Res> {
  factory $SplashDatabaseEventCopyWith(
          SplashDatabaseEvent value, $Res Function(SplashDatabaseEvent) then) =
      _$SplashDatabaseEventCopyWithImpl<$Res>;
}

class _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $SplashDatabaseEventCopyWith<$Res> {
  _$SplashDatabaseEventCopyWithImpl(this._value, this._then);

  final SplashDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SplashDatabaseEvent) _then;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AccountStatus accountStatus});
}

class _$AuthenticatedCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object accountStatus = freezed,
  }) {
    return _then(Authenticated(
      accountStatus: accountStatus == freezed
          ? _value.accountStatus
          : accountStatus as AccountStatus,
    ));
  }
}

class _$Authenticated implements Authenticated {
  const _$Authenticated({@required this.accountStatus})
      : assert(accountStatus != null);

  @override
  final AccountStatus accountStatus;

  @override
  String toString() {
    return 'SplashDatabaseEvent.authenticated(accountStatus: $accountStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.accountStatus, accountStatus) ||
                const DeepCollectionEquality()
                    .equals(other.accountStatus, accountStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountStatus);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AccountStatus accountStatus),
    @required Result logoAnimationCompleted(),
  }) {
    assert(authenticated != null);
    assert(logoAnimationCompleted != null);
    return authenticated(accountStatus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AccountStatus accountStatus),
    Result logoAnimationCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(accountStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result logoAnimationCompleted(LogoAnimationCompleted value),
  }) {
    assert(authenticated != null);
    assert(logoAnimationCompleted != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result logoAnimationCompleted(LogoAnimationCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SplashDatabaseEvent {
  const factory Authenticated({@required AccountStatus accountStatus}) =
      _$Authenticated;

  AccountStatus get accountStatus;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $LogoAnimationCompletedCopyWith<$Res> {
  factory $LogoAnimationCompletedCopyWith(LogoAnimationCompleted value,
          $Res Function(LogoAnimationCompleted) then) =
      _$LogoAnimationCompletedCopyWithImpl<$Res>;
}

class _$LogoAnimationCompletedCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $LogoAnimationCompletedCopyWith<$Res> {
  _$LogoAnimationCompletedCopyWithImpl(LogoAnimationCompleted _value,
      $Res Function(LogoAnimationCompleted) _then)
      : super(_value, (v) => _then(v as LogoAnimationCompleted));

  @override
  LogoAnimationCompleted get _value => super._value as LogoAnimationCompleted;
}

class _$LogoAnimationCompleted implements LogoAnimationCompleted {
  const _$LogoAnimationCompleted();

  @override
  String toString() {
    return 'SplashDatabaseEvent.logoAnimationCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoAnimationCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AccountStatus accountStatus),
    @required Result logoAnimationCompleted(),
  }) {
    assert(authenticated != null);
    assert(logoAnimationCompleted != null);
    return logoAnimationCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AccountStatus accountStatus),
    Result logoAnimationCompleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoAnimationCompleted != null) {
      return logoAnimationCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result logoAnimationCompleted(LogoAnimationCompleted value),
  }) {
    assert(authenticated != null);
    assert(logoAnimationCompleted != null);
    return logoAnimationCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result logoAnimationCompleted(LogoAnimationCompleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoAnimationCompleted != null) {
      return logoAnimationCompleted(this);
    }
    return orElse();
  }
}

abstract class LogoAnimationCompleted implements SplashDatabaseEvent {
  const factory LogoAnimationCompleted() = _$LogoAnimationCompleted;
}

class _$SplashDatabaseStateTearOff {
  const _$SplashDatabaseStateTearOff();

  _SplashDatabaseState call(
      {@required
          bool isUpdating,
      @required
          bool isLogoAnimationCompleted,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _SplashDatabaseState(
      isUpdating: isUpdating,
      isLogoAnimationCompleted: isLogoAnimationCompleted,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SplashDatabaseState = _$SplashDatabaseStateTearOff();

mixin _$SplashDatabaseState {
  bool get isUpdating;
  bool get isLogoAnimationCompleted;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $SplashDatabaseStateCopyWith<SplashDatabaseState> get copyWith;
}

abstract class $SplashDatabaseStateCopyWith<$Res> {
  factory $SplashDatabaseStateCopyWith(
          SplashDatabaseState value, $Res Function(SplashDatabaseState) then) =
      _$SplashDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      bool isLogoAnimationCompleted,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$SplashDatabaseStateCopyWithImpl<$Res>
    implements $SplashDatabaseStateCopyWith<$Res> {
  _$SplashDatabaseStateCopyWithImpl(this._value, this._then);

  final SplashDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SplashDatabaseState) _then;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object isLogoAnimationCompleted = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isLogoAnimationCompleted: isLogoAnimationCompleted == freezed
          ? _value.isLogoAnimationCompleted
          : isLogoAnimationCompleted as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$SplashDatabaseStateCopyWith<$Res>
    implements $SplashDatabaseStateCopyWith<$Res> {
  factory _$SplashDatabaseStateCopyWith(_SplashDatabaseState value,
          $Res Function(_SplashDatabaseState) then) =
      __$SplashDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUpdating,
      bool isLogoAnimationCompleted,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$SplashDatabaseStateCopyWithImpl<$Res>
    extends _$SplashDatabaseStateCopyWithImpl<$Res>
    implements _$SplashDatabaseStateCopyWith<$Res> {
  __$SplashDatabaseStateCopyWithImpl(
      _SplashDatabaseState _value, $Res Function(_SplashDatabaseState) _then)
      : super(_value, (v) => _then(v as _SplashDatabaseState));

  @override
  _SplashDatabaseState get _value => super._value as _SplashDatabaseState;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object isLogoAnimationCompleted = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashDatabaseState(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isLogoAnimationCompleted: isLogoAnimationCompleted == freezed
          ? _value.isLogoAnimationCompleted
          : isLogoAnimationCompleted as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_SplashDatabaseState implements _SplashDatabaseState {
  const _$_SplashDatabaseState(
      {@required this.isUpdating,
      @required this.isLogoAnimationCompleted,
      @required this.databaseFailureOrSuccessOption})
      : assert(isUpdating != null),
        assert(isLogoAnimationCompleted != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final bool isUpdating;
  @override
  final bool isLogoAnimationCompleted;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashDatabaseState(isUpdating: $isUpdating, isLogoAnimationCompleted: $isLogoAnimationCompleted, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashDatabaseState &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(
                    other.isLogoAnimationCompleted, isLogoAnimationCompleted) ||
                const DeepCollectionEquality().equals(
                    other.isLogoAnimationCompleted,
                    isLogoAnimationCompleted)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(isLogoAnimationCompleted) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$SplashDatabaseStateCopyWith<_SplashDatabaseState> get copyWith =>
      __$SplashDatabaseStateCopyWithImpl<_SplashDatabaseState>(
          this, _$identity);
}

abstract class _SplashDatabaseState implements SplashDatabaseState {
  const factory _SplashDatabaseState(
      {@required
          bool isUpdating,
      @required
          bool isLogoAnimationCompleted,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_SplashDatabaseState;

  @override
  bool get isUpdating;
  @override
  bool get isLogoAnimationCompleted;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$SplashDatabaseStateCopyWith<_SplashDatabaseState> get copyWith;
}
