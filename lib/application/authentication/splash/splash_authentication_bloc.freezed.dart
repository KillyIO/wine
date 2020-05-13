// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'splash_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashAuthenticationEventTearOff {
  const _$SplashAuthenticationEventTearOff();

  SplashLaunched splashLaunched() {
    return const SplashLaunched();
  }
}

// ignore: unused_element
const $SplashAuthenticationEvent = _$SplashAuthenticationEventTearOff();

mixin _$SplashAuthenticationEvent {}

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

abstract class $SplashLaunchedCopyWith<$Res> {
  factory $SplashLaunchedCopyWith(
          SplashLaunched value, $Res Function(SplashLaunched) then) =
      _$SplashLaunchedCopyWithImpl<$Res>;
}

class _$SplashLaunchedCopyWithImpl<$Res>
    extends _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashLaunchedCopyWith<$Res> {
  _$SplashLaunchedCopyWithImpl(
      SplashLaunched _value, $Res Function(SplashLaunched) _then)
      : super(_value, (v) => _then(v as SplashLaunched));

  @override
  SplashLaunched get _value => super._value as SplashLaunched;
}

class _$SplashLaunched implements SplashLaunched {
  const _$SplashLaunched();

  @override
  String toString() {
    return 'SplashAuthenticationEvent.splashLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SplashLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SplashLaunched implements SplashAuthenticationEvent {
  const factory SplashLaunched() = _$SplashLaunched;
}

class _$SplashAuthenticationStateTearOff {
  const _$SplashAuthenticationStateTearOff();

  _SplashAuthenticationState call(
      {@required
          bool isAuthenticating,
      @required
          bool isAnonymous,
      @required
          Option<Either<AuthenticationFailure, dynamic>>
              authenticationFailureOrSuccessOption}) {
    return _SplashAuthenticationState(
      isAuthenticating: isAuthenticating,
      isAnonymous: isAnonymous,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SplashAuthenticationState = _$SplashAuthenticationStateTearOff();

mixin _$SplashAuthenticationState {
  bool get isAuthenticating;
  bool get isAnonymous;
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;

  $SplashAuthenticationStateCopyWith<SplashAuthenticationState> get copyWith;
}

abstract class $SplashAuthenticationStateCopyWith<$Res> {
  factory $SplashAuthenticationStateCopyWith(SplashAuthenticationState value,
          $Res Function(SplashAuthenticationState) then) =
      _$SplashAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAuthenticating,
      bool isAnonymous,
      Option<Either<AuthenticationFailure, dynamic>>
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
    Object isAnonymous = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating as bool,
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

abstract class _$SplashAuthenticationStateCopyWith<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  factory _$SplashAuthenticationStateCopyWith(_SplashAuthenticationState value,
          $Res Function(_SplashAuthenticationState) then) =
      __$SplashAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAuthenticating,
      bool isAnonymous,
      Option<Either<AuthenticationFailure, dynamic>>
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
    Object isAnonymous = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashAuthenticationState(
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating as bool,
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

class _$_SplashAuthenticationState implements _SplashAuthenticationState {
  const _$_SplashAuthenticationState(
      {@required this.isAuthenticating,
      @required this.isAnonymous,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isAuthenticating != null),
        assert(isAnonymous != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isAuthenticating;
  @override
  final bool isAnonymous;
  @override
  final Option<Either<AuthenticationFailure, dynamic>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashAuthenticationState(isAuthenticating: $isAuthenticating, isAnonymous: $isAnonymous, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashAuthenticationState &&
            (identical(other.isAuthenticating, isAuthenticating) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticating, isAuthenticating)) &&
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
      const DeepCollectionEquality().hash(isAuthenticating) ^
      const DeepCollectionEquality().hash(isAnonymous) ^
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
              bool isAnonymous,
          @required
              Option<Either<AuthenticationFailure, dynamic>>
                  authenticationFailureOrSuccessOption}) =
      _$_SplashAuthenticationState;

  @override
  bool get isAuthenticating;
  @override
  bool get isAnonymous;
  @override
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;
  @override
  _$SplashAuthenticationStateCopyWith<_SplashAuthenticationState> get copyWith;
}
