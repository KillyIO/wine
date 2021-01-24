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
  SplashLaunchedEVT splashLaunchedEVT() {
    return const SplashLaunchedEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashAuthenticationEvent = _$SplashAuthenticationEventTearOff();

/// @nodoc
mixin _$SplashAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult splashLaunchedEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult splashLaunchedEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult splashLaunchedEVT(SplashLaunchedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult splashLaunchedEVT(SplashLaunchedEVT value),
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
abstract class $SplashLaunchedEVTCopyWith<$Res> {
  factory $SplashLaunchedEVTCopyWith(
          SplashLaunchedEVT value, $Res Function(SplashLaunchedEVT) then) =
      _$SplashLaunchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashLaunchedEVTCopyWithImpl<$Res>
    extends _$SplashAuthenticationEventCopyWithImpl<$Res>
    implements $SplashLaunchedEVTCopyWith<$Res> {
  _$SplashLaunchedEVTCopyWithImpl(
      SplashLaunchedEVT _value, $Res Function(SplashLaunchedEVT) _then)
      : super(_value, (v) => _then(v as SplashLaunchedEVT));

  @override
  SplashLaunchedEVT get _value => super._value as SplashLaunchedEVT;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult splashLaunchedEVT(),
  }) {
    assert(splashLaunchedEVT != null);
    return splashLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult splashLaunchedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splashLaunchedEVT != null) {
      return splashLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult splashLaunchedEVT(SplashLaunchedEVT value),
  }) {
    assert(splashLaunchedEVT != null);
    return splashLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult splashLaunchedEVT(SplashLaunchedEVT value),
    @required TResult orElse(),
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

/// @nodoc
class _$SplashAuthenticationStateTearOff {
  const _$SplashAuthenticationStateTearOff();

// ignore: unused_element
  _SplashAuthenticationState call(
      {@required
          bool isAnonymous,
      @required
          bool isAuthenticating,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authenticationFailureOrSuccessOption}) {
    return _SplashAuthenticationState(
      isAnonymous: isAnonymous,
      isAuthenticating: isAuthenticating,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashAuthenticationState = _$SplashAuthenticationStateTearOff();

/// @nodoc
mixin _$SplashAuthenticationState {
  bool get isAnonymous;
  bool get isAuthenticating;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SplashAuthenticationStateCopyWith<SplashAuthenticationState> get copyWith;
}

/// @nodoc
abstract class $SplashAuthenticationStateCopyWith<$Res> {
  factory $SplashAuthenticationStateCopyWith(SplashAuthenticationState value,
          $Res Function(SplashAuthenticationState) then) =
      _$SplashAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAnonymous,
      bool isAuthenticating,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

/// @nodoc
class _$SplashAuthenticationStateCopyWithImpl<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  _$SplashAuthenticationStateCopyWithImpl(this._value, this._then);

  final SplashAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SplashAuthenticationState) _then;

  @override
  $Res call({
    Object isAnonymous = freezed,
    Object isAuthenticating = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
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

/// @nodoc
abstract class _$SplashAuthenticationStateCopyWith<$Res>
    implements $SplashAuthenticationStateCopyWith<$Res> {
  factory _$SplashAuthenticationStateCopyWith(_SplashAuthenticationState value,
          $Res Function(_SplashAuthenticationState) then) =
      __$SplashAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAnonymous,
      bool isAuthenticating,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

/// @nodoc
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
    Object isAnonymous = freezed,
    Object isAuthenticating = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashAuthenticationState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
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

/// @nodoc
class _$_SplashAuthenticationState implements _SplashAuthenticationState {
  const _$_SplashAuthenticationState(
      {@required this.isAnonymous,
      @required this.isAuthenticating,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isAnonymous != null),
        assert(isAuthenticating != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isAnonymous;
  @override
  final bool isAuthenticating;
  @override
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashAuthenticationState(isAnonymous: $isAnonymous, isAuthenticating: $isAuthenticating, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashAuthenticationState &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)) &&
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
      const DeepCollectionEquality().hash(isAnonymous) ^
      const DeepCollectionEquality().hash(isAuthenticating) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SplashAuthenticationStateCopyWith<_SplashAuthenticationState>
      get copyWith =>
          __$SplashAuthenticationStateCopyWithImpl<_SplashAuthenticationState>(
              this, _$identity);
}

abstract class _SplashAuthenticationState implements SplashAuthenticationState {
  const factory _SplashAuthenticationState(
          {@required
              bool isAnonymous,
          @required
              bool isAuthenticating,
          @required
              Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                  authenticationFailureOrSuccessOption}) =
      _$_SplashAuthenticationState;

  @override
  bool get isAnonymous;
  @override
  bool get isAuthenticating;
  @override
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SplashAuthenticationStateCopyWith<_SplashAuthenticationState> get copyWith;
}
