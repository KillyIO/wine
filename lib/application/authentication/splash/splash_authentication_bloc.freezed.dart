// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'splash_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashAuthenticationEventTearOff {
  const _$SplashAuthenticationEventTearOff();

  SplashLaunchedEVT splashLaunchedEVT() {
    return const SplashLaunchedEVT();
  }
}

// ignore: unused_element
const $SplashAuthenticationEvent = _$SplashAuthenticationEventTearOff();

mixin _$SplashAuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result splashLaunchedEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result splashLaunchedEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result splashLaunchedEVT(SplashLaunchedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result splashLaunchedEVT(SplashLaunchedEVT value),
    @required Result orElse(),
  });
}

abstract class $SplashAuthenticationEventCopyWith<$Res> {
  factory $SplashAuthenticationEventCopyWith(SplashAuthenticationEvent value,
          $Res Function(SplashAuthenticationEvent) then) =
      _$SplashAuthenticationEventCopyWithImpl<$Res>;
}

class _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashAuthenticationEventCopyWith<$Res> {
  _$SplashAuthenticationEventCopyWithImpl(this._value, this._then);

  final SplashAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SplashAuthenticationEvent) _then;
}

abstract class $SplashLaunchedEVTCopyWith<$Res> {
  factory $SplashLaunchedEVTCopyWith(
          SplashLaunchedEVT value, $Res Function(SplashLaunchedEVT) then) =
      _$SplashLaunchedEVTCopyWithImpl<$Res>;
}

class _$SplashLaunchedEVTCopyWithImpl<$Res>
    extends _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashLaunchedEVTCopyWith<$Res> {
  _$SplashLaunchedEVTCopyWithImpl(
      SplashLaunchedEVT _value, $Res Function(SplashLaunchedEVT) _then)
      : super(_value, (v) => _then(v as SplashLaunchedEVT));

  @override
  SplashLaunchedEVT get _value => super._value as SplashLaunchedEVT;
}

class _$SplashLaunchedEVT implements SplashLaunchedEVT {
  const _$SplashLaunchedEVT();

  @override
  String toString() {
    return 'SplashAuthenticationEvent.splashLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SplashLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result splashLaunchedEVT(),
  }) {
    assert(splashLaunchedEVT != null);
    return splashLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result splashLaunchedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (splashLaunchedEVT != null) {
      return splashLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result splashLaunchedEVT(SplashLaunchedEVT value),
  }) {
    assert(splashLaunchedEVT != null);
    return splashLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result splashLaunchedEVT(SplashLaunchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (splashLaunchedEVT != null) {
      return splashLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class SplashLaunchedEVT implements SplashAuthenticationEvent {
  const factory SplashLaunchedEVT() = _$SplashLaunchedEVT;
}

class _$SplashAuthenticationStateTearOff {
  const _$SplashAuthenticationStateTearOff();

  _SplashAuthenticationState call(
      {@required
          bool isAuthenticating,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authenticationFailureOrSuccessOption}) {
    return _SplashAuthenticationState(
      isAuthenticating: isAuthenticating,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SplashAuthenticationState = _$SplashAuthenticationStateTearOff();

mixin _$SplashAuthenticationState {
  bool get isAuthenticating;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;

  $SplashAuthenticationStateCopyWith<SplashAuthenticationState> get copyWith;
}

abstract class $SplashAuthenticationStateCopyWith<$Res> {
  factory $SplashAuthenticationStateCopyWith(SplashAuthenticationState value,
          $Res Function(SplashAuthenticationState) then) =
      _$SplashAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAuthenticating,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

class _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  _$SplashAuthenticationStateCopyWithImpl(this._value, this._then);

  final SplashAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SplashAuthenticationState) _then;

  @override
  $Res call({
    Object isAuthenticating = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
    ));
  }
}

abstract class _$SplashAuthenticationStateCopyWith<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  factory _$SplashAuthenticationStateCopyWith(_SplashAuthenticationState value,
          $Res Function(_SplashAuthenticationState) then) =
      __$SplashAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAuthenticating,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

class __$SplashAuthenticationStateCopyWithImpl<$Res>
    extends _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements _$SplashAuthenticationStateCopyWith<$Res> {
  __$SplashAuthenticationStateCopyWithImpl(_SplashAuthenticationState _value,
      $Res Function(_SplashAuthenticationState) _then)
      : super(_value, (v) => _then(v as _SplashAuthenticationState));

  @override
  _SplashAuthenticationState get _value =>
      super._value as _SplashAuthenticationState;

  @override
  $Res call({
    Object isAuthenticating = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashAuthenticationState(
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
    ));
  }
}

class _$_SplashAuthenticationState implements _SplashAuthenticationState {
  const _$_SplashAuthenticationState(
      {@required this.isAuthenticating,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isAuthenticating != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isAuthenticating;
  @override
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashAuthenticationState(isAuthenticating: $isAuthenticating, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashAuthenticationState &&
            (identical(other.isAuthenticating, isAuthenticating) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticating, isAuthenticating)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticating) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @override
  _$SplashAuthenticationStateCopyWith<_SplashAuthenticationState>
      get copyWith =>
          __$SplashAuthenticationStateCopyWithImpl<_SplashAuthenticationState>(
              this, _$identity);
}

abstract class _SplashAuthenticationState implements SplashAuthenticationState {
  const factory _SplashAuthenticationState(
          {@required
              bool isAuthenticating,
          @required
              Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                  authenticationFailureOrSuccessOption}) =
      _$_SplashAuthenticationState;

  @override
  bool get isAuthenticating;
  @override
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  @override
  _$SplashAuthenticationStateCopyWith<_SplashAuthenticationState> get copyWith;
}
