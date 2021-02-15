// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashAuthenticationEventTearOff {
  const _$SplashAuthenticationEventTearOff();

// ignore: unused_element
  SplashLaunched splashLaunched() {
    return const SplashLaunched();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashAuthenticationEvent = _$SplashAuthenticationEventTearOff();

/// @nodoc
mixin _$SplashAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult splashLaunched(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult splashLaunched(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult splashLaunched(SplashLaunched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult splashLaunched(SplashLaunched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashAuthenticationEventCopyWith<$Res> {
  factory $SplashAuthenticationEventCopyWith(SplashAuthenticationEvent value,
          $Res Function(SplashAuthenticationEvent) then) =
      _$SplashAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashAuthenticationEventCopyWith<$Res> {
  _$SplashAuthenticationEventCopyWithImpl(this._value, this._then);

  final SplashAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SplashAuthenticationEvent) _then;
}

/// @nodoc
abstract class $SplashLaunchedCopyWith<$Res> {
  factory $SplashLaunchedCopyWith(
          SplashLaunched value, $Res Function(SplashLaunched) then) =
      _$SplashLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashLaunchedCopyWithImpl<$Res>
    extends _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashLaunchedCopyWith<$Res> {
  _$SplashLaunchedCopyWithImpl(
      SplashLaunched _value, $Res Function(SplashLaunched) _then)
      : super(_value, (v) => _then(v as SplashLaunched));

  @override
  SplashLaunched get _value => super._value as SplashLaunched;
}

/// @nodoc
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult splashLaunched(),
  }) {
    assert(splashLaunched != null);
    return splashLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult splashLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splashLaunched != null) {
      return splashLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult splashLaunched(SplashLaunched value),
  }) {
    assert(splashLaunched != null);
    return splashLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult splashLaunched(SplashLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splashLaunched != null) {
      return splashLaunched(this);
    }
    return orElse();
  }
}

abstract class SplashLaunched implements SplashAuthenticationEvent {
  const factory SplashLaunched() = _$SplashLaunched;
}

/// @nodoc
class _$SplashAuthenticationStateTearOff {
  const _$SplashAuthenticationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authenticating authenticating() {
    return const _Authenticating();
  }

// ignore: unused_element
  _Authenticated authenticated(
      bool iaAnonymous,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption) {
    return _Authenticated(
      iaAnonymous,
      authenticationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashAuthenticationState = _$SplashAuthenticationStateTearOff();

/// @nodoc
mixin _$SplashAuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticating(),
    @required
        TResult authenticated(
            bool iaAnonymous,
            Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                authenticationFailureOrSuccessOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticating(),
    TResult authenticated(
        bool iaAnonymous,
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticated(_Authenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticating(_Authenticating value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashAuthenticationStateCopyWith<$Res> {
  factory $SplashAuthenticationStateCopyWith(SplashAuthenticationState value,
          $Res Function(SplashAuthenticationState) then) =
      _$SplashAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  _$SplashAuthenticationStateCopyWithImpl(this._value, this._then);

  final SplashAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SplashAuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SplashAuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticating(),
    @required
        TResult authenticated(
            bool iaAnonymous,
            Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                authenticationFailureOrSuccessOption),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticating(),
    TResult authenticated(
        bool iaAnonymous,
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticating(_Authenticating value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashAuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<$Res> {
  factory _$AuthenticatingCopyWith(
          _Authenticating value, $Res Function(_Authenticating) then) =
      __$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<$Res>
    extends _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatingCopyWith<$Res> {
  __$AuthenticatingCopyWithImpl(
      _Authenticating _value, $Res Function(_Authenticating) _then)
      : super(_value, (v) => _then(v as _Authenticating));

  @override
  _Authenticating get _value => super._value as _Authenticating;
}

/// @nodoc
class _$_Authenticating implements _Authenticating {
  const _$_Authenticating();

  @override
  String toString() {
    return 'SplashAuthenticationState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticating(),
    @required
        TResult authenticated(
            bool iaAnonymous,
            Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                authenticationFailureOrSuccessOption),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticating(),
    TResult authenticated(
        bool iaAnonymous,
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticating(_Authenticating value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements SplashAuthenticationState {
  const factory _Authenticating() = _$_Authenticating;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {bool iaAnonymous,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object iaAnonymous = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_Authenticated(
      iaAnonymous == freezed ? _value.iaAnonymous : iaAnonymous as bool,
      authenticationFailureOrSuccessOption == freezed
          ? _value.authenticationFailureOrSuccessOption
          : authenticationFailureOrSuccessOption
              as Option<Either<AuthenticationFailure, AuthenticationSuccess>>,
    ));
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(
      this.iaAnonymous, this.authenticationFailureOrSuccessOption)
      : assert(iaAnonymous != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool iaAnonymous;
  @override
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashAuthenticationState.authenticated(iaAnonymous: $iaAnonymous, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.iaAnonymous, iaAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.iaAnonymous, iaAnonymous)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iaAnonymous) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticating(),
    @required
        TResult authenticated(
            bool iaAnonymous,
            Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                authenticationFailureOrSuccessOption),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return authenticated(iaAnonymous, authenticationFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticating(),
    TResult authenticated(
        bool iaAnonymous,
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(iaAnonymous, authenticationFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticating(_Authenticating value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements SplashAuthenticationState {
  const factory _Authenticated(
      bool iaAnonymous,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption) = _$_Authenticated;

  bool get iaAnonymous;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}
