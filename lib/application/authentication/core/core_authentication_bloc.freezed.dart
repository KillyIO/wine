// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreAuthenticationEventTearOff {
  const _$CoreAuthenticationEventTearOff();

  AppLaunched appLaunched() {
    return const AppLaunched();
  }

  AuthenticationChanged authenticationChanged() {
    return const AuthenticationChanged();
  }
}

// ignore: unused_element
const $CoreAuthenticationEvent = _$CoreAuthenticationEventTearOff();

mixin _$CoreAuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunched(),
    @required Result authenticationChanged(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunched(),
    Result authenticationChanged(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunched(AppLaunched value),
    @required Result authenticationChanged(AuthenticationChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunched(AppLaunched value),
    Result authenticationChanged(AuthenticationChanged value),
    @required Result orElse(),
  });
}

abstract class $CoreAuthenticationEventCopyWith<$Res> {
  factory $CoreAuthenticationEventCopyWith(CoreAuthenticationEvent value,
          $Res Function(CoreAuthenticationEvent) then) =
      _$CoreAuthenticationEventCopyWithImpl<$Res>;
}

class _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $CoreAuthenticationEventCopyWith<$Res> {
  _$CoreAuthenticationEventCopyWithImpl(this._value, this._then);

  final CoreAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationEvent) _then;
}

abstract class $AppLaunchedCopyWith<$Res> {
  factory $AppLaunchedCopyWith(
          AppLaunched value, $Res Function(AppLaunched) then) =
      _$AppLaunchedCopyWithImpl<$Res>;
}

class _$AppLaunchedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $AppLaunchedCopyWith<$Res> {
  _$AppLaunchedCopyWithImpl(
      AppLaunched _value, $Res Function(AppLaunched) _then)
      : super(_value, (v) => _then(v as AppLaunched));

  @override
  AppLaunched get _value => super._value as AppLaunched;
}

class _$AppLaunched implements AppLaunched {
  const _$AppLaunched();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.appLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunched(),
    @required Result authenticationChanged(),
  }) {
    assert(appLaunched != null);
    assert(authenticationChanged != null);
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunched(),
    Result authenticationChanged(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunched != null) {
      return appLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunched(AppLaunched value),
    @required Result authenticationChanged(AuthenticationChanged value),
  }) {
    assert(appLaunched != null);
    assert(authenticationChanged != null);
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunched(AppLaunched value),
    Result authenticationChanged(AuthenticationChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunched != null) {
      return appLaunched(this);
    }
    return orElse();
  }
}

abstract class AppLaunched implements CoreAuthenticationEvent {
  const factory AppLaunched() = _$AppLaunched;
}

abstract class $AuthenticationChangedCopyWith<$Res> {
  factory $AuthenticationChangedCopyWith(AuthenticationChanged value,
          $Res Function(AuthenticationChanged) then) =
      _$AuthenticationChangedCopyWithImpl<$Res>;
}

class _$AuthenticationChangedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationChangedCopyWith<$Res> {
  _$AuthenticationChangedCopyWithImpl(
      AuthenticationChanged _value, $Res Function(AuthenticationChanged) _then)
      : super(_value, (v) => _then(v as AuthenticationChanged));

  @override
  AuthenticationChanged get _value => super._value as AuthenticationChanged;
}

class _$AuthenticationChanged implements AuthenticationChanged {
  const _$AuthenticationChanged();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.authenticationChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunched(),
    @required Result authenticationChanged(),
  }) {
    assert(appLaunched != null);
    assert(authenticationChanged != null);
    return authenticationChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunched(),
    Result authenticationChanged(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationChanged != null) {
      return authenticationChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunched(AppLaunched value),
    @required Result authenticationChanged(AuthenticationChanged value),
  }) {
    assert(appLaunched != null);
    assert(authenticationChanged != null);
    return authenticationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunched(AppLaunched value),
    Result authenticationChanged(AuthenticationChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationChanged != null) {
      return authenticationChanged(this);
    }
    return orElse();
  }
}

abstract class AuthenticationChanged implements CoreAuthenticationEvent {
  const factory AuthenticationChanged() = _$AuthenticationChanged;
}

class _$CoreAuthenticationStateTearOff {
  const _$CoreAuthenticationStateTearOff();

  _CoreAuthenticationState call(
      {@required
          bool isAnonymous,
      @required
          Option<Either<AuthenticationFailure, dynamic>>
              authenticationFailureOrSuccessOption}) {
    return _CoreAuthenticationState(
      isAnonymous: isAnonymous,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CoreAuthenticationState = _$CoreAuthenticationStateTearOff();

mixin _$CoreAuthenticationState {
  bool get isAnonymous;
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;

  $CoreAuthenticationStateCopyWith<CoreAuthenticationState> get copyWith;
}

abstract class $CoreAuthenticationStateCopyWith<$Res> {
  factory $CoreAuthenticationStateCopyWith(CoreAuthenticationState value,
          $Res Function(CoreAuthenticationState) then) =
      _$CoreAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAnonymous,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  _$CoreAuthenticationStateCopyWithImpl(this._value, this._then);

  final CoreAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationState) _then;

  @override
  $Res call({
    Object isAnonymous = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

abstract class _$CoreAuthenticationStateCopyWith<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  factory _$CoreAuthenticationStateCopyWith(_CoreAuthenticationState value,
          $Res Function(_CoreAuthenticationState) then) =
      __$CoreAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAnonymous,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class __$CoreAuthenticationStateCopyWithImpl<$Res>
    extends _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements _$CoreAuthenticationStateCopyWith<$Res> {
  __$CoreAuthenticationStateCopyWithImpl(_CoreAuthenticationState _value,
      $Res Function(_CoreAuthenticationState) _then)
      : super(_value, (v) => _then(v as _CoreAuthenticationState));

  @override
  _CoreAuthenticationState get _value =>
      super._value as _CoreAuthenticationState;

  @override
  $Res call({
    Object isAnonymous = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_CoreAuthenticationState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

class _$_CoreAuthenticationState implements _CoreAuthenticationState {
  const _$_CoreAuthenticationState(
      {@required this.isAnonymous,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isAnonymous != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isAnonymous;
  @override
  final Option<Either<AuthenticationFailure, dynamic>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'CoreAuthenticationState(isAnonymous: $isAnonymous, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreAuthenticationState &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAnonymous) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith =>
      __$CoreAuthenticationStateCopyWithImpl<_CoreAuthenticationState>(
          this, _$identity);
}

abstract class _CoreAuthenticationState implements CoreAuthenticationState {
  const factory _CoreAuthenticationState(
          {@required
              bool isAnonymous,
          @required
              Option<Either<AuthenticationFailure, dynamic>>
                  authenticationFailureOrSuccessOption}) =
      _$_CoreAuthenticationState;

  @override
  bool get isAnonymous;
  @override
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;
  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith;
}
