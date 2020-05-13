// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsAuthenticationEventTearOff {
  const _$SettingsAuthenticationEventTearOff();

  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }

  ResetSettingsAuthenticationBloc resetSettingsAuthenticationBloc() {
    return const ResetSettingsAuthenticationBloc();
  }
}

// ignore: unused_element
const $SettingsAuthenticationEvent = _$SettingsAuthenticationEventTearOff();

mixin _$SettingsAuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signOutPressed(),
    @required Result resetSettingsAuthenticationBloc(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signOutPressed(),
    Result resetSettingsAuthenticationBloc(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signOutPressed(SignOutPressed value),
    @required
        Result resetSettingsAuthenticationBloc(
            ResetSettingsAuthenticationBloc value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signOutPressed(SignOutPressed value),
    Result resetSettingsAuthenticationBloc(
        ResetSettingsAuthenticationBloc value),
    @required Result orElse(),
  });
}

abstract class $SettingsAuthenticationEventCopyWith<$Res> {
  factory $SettingsAuthenticationEventCopyWith(
          SettingsAuthenticationEvent value,
          $Res Function(SettingsAuthenticationEvent) then) =
      _$SettingsAuthenticationEventCopyWithImpl<$Res>;
}

class _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $SettingsAuthenticationEventCopyWith<$Res> {
  _$SettingsAuthenticationEventCopyWithImpl(this._value, this._then);

  final SettingsAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsAuthenticationEvent) _then;
}

abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

class _$SignOutPressedCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

class _$SignOutPressed implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString() {
    return 'SettingsAuthenticationEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signOutPressed(),
    @required Result resetSettingsAuthenticationBloc(),
  }) {
    assert(signOutPressed != null);
    assert(resetSettingsAuthenticationBloc != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signOutPressed(),
    Result resetSettingsAuthenticationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signOutPressed(SignOutPressed value),
    @required
        Result resetSettingsAuthenticationBloc(
            ResetSettingsAuthenticationBloc value),
  }) {
    assert(signOutPressed != null);
    assert(resetSettingsAuthenticationBloc != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signOutPressed(SignOutPressed value),
    Result resetSettingsAuthenticationBloc(
        ResetSettingsAuthenticationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements SettingsAuthenticationEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}

abstract class $ResetSettingsAuthenticationBlocCopyWith<$Res> {
  factory $ResetSettingsAuthenticationBlocCopyWith(
          ResetSettingsAuthenticationBloc value,
          $Res Function(ResetSettingsAuthenticationBloc) then) =
      _$ResetSettingsAuthenticationBlocCopyWithImpl<$Res>;
}

class _$ResetSettingsAuthenticationBlocCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $ResetSettingsAuthenticationBlocCopyWith<$Res> {
  _$ResetSettingsAuthenticationBlocCopyWithImpl(
      ResetSettingsAuthenticationBloc _value,
      $Res Function(ResetSettingsAuthenticationBloc) _then)
      : super(_value, (v) => _then(v as ResetSettingsAuthenticationBloc));

  @override
  ResetSettingsAuthenticationBloc get _value =>
      super._value as ResetSettingsAuthenticationBloc;
}

class _$ResetSettingsAuthenticationBloc
    implements ResetSettingsAuthenticationBloc {
  const _$ResetSettingsAuthenticationBloc();

  @override
  String toString() {
    return 'SettingsAuthenticationEvent.resetSettingsAuthenticationBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetSettingsAuthenticationBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signOutPressed(),
    @required Result resetSettingsAuthenticationBloc(),
  }) {
    assert(signOutPressed != null);
    assert(resetSettingsAuthenticationBloc != null);
    return resetSettingsAuthenticationBloc();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signOutPressed(),
    Result resetSettingsAuthenticationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetSettingsAuthenticationBloc != null) {
      return resetSettingsAuthenticationBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signOutPressed(SignOutPressed value),
    @required
        Result resetSettingsAuthenticationBloc(
            ResetSettingsAuthenticationBloc value),
  }) {
    assert(signOutPressed != null);
    assert(resetSettingsAuthenticationBloc != null);
    return resetSettingsAuthenticationBloc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signOutPressed(SignOutPressed value),
    Result resetSettingsAuthenticationBloc(
        ResetSettingsAuthenticationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetSettingsAuthenticationBloc != null) {
      return resetSettingsAuthenticationBloc(this);
    }
    return orElse();
  }
}

abstract class ResetSettingsAuthenticationBloc
    implements SettingsAuthenticationEvent {
  const factory ResetSettingsAuthenticationBloc() =
      _$ResetSettingsAuthenticationBloc;
}

class _$SettingsAuthenticationStateTearOff {
  const _$SettingsAuthenticationStateTearOff();

  _SettingsAuthenticationState call(
      {@required
          bool isSigningOut,
      @required
          bool isUserSignedOut,
      @required
          Option<Either<AuthenticationFailure, dynamic>>
              authenticationFailureOrSuccessOption}) {
    return _SettingsAuthenticationState(
      isSigningOut: isSigningOut,
      isUserSignedOut: isUserSignedOut,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SettingsAuthenticationState = _$SettingsAuthenticationStateTearOff();

mixin _$SettingsAuthenticationState {
  bool get isSigningOut;
  bool get isUserSignedOut;
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;

  $SettingsAuthenticationStateCopyWith<SettingsAuthenticationState>
      get copyWith;
}

abstract class $SettingsAuthenticationStateCopyWith<$Res> {
  factory $SettingsAuthenticationStateCopyWith(
          SettingsAuthenticationState value,
          $Res Function(SettingsAuthenticationState) then) =
      _$SettingsAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSigningOut,
      bool isUserSignedOut,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class _$SettingsAuthenticationStateCopyWithImpl<$Res>
    implements $SettingsAuthenticationStateCopyWith<$Res> {
  _$SettingsAuthenticationStateCopyWithImpl(this._value, this._then);

  final SettingsAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SettingsAuthenticationState) _then;

  @override
  $Res call({
    Object isSigningOut = freezed,
    Object isUserSignedOut = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      isUserSignedOut: isUserSignedOut == freezed
          ? _value.isUserSignedOut
          : isUserSignedOut as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

abstract class _$SettingsAuthenticationStateCopyWith<$Res>
    implements $SettingsAuthenticationStateCopyWith<$Res> {
  factory _$SettingsAuthenticationStateCopyWith(
          _SettingsAuthenticationState value,
          $Res Function(_SettingsAuthenticationState) then) =
      __$SettingsAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSigningOut,
      bool isUserSignedOut,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class __$SettingsAuthenticationStateCopyWithImpl<$Res>
    extends _$SettingsAuthenticationStateCopyWithImpl<$Res>
    implements _$SettingsAuthenticationStateCopyWith<$Res> {
  __$SettingsAuthenticationStateCopyWithImpl(
      _SettingsAuthenticationState _value,
      $Res Function(_SettingsAuthenticationState) _then)
      : super(_value, (v) => _then(v as _SettingsAuthenticationState));

  @override
  _SettingsAuthenticationState get _value =>
      super._value as _SettingsAuthenticationState;

  @override
  $Res call({
    Object isSigningOut = freezed,
    Object isUserSignedOut = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsAuthenticationState(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      isUserSignedOut: isUserSignedOut == freezed
          ? _value.isUserSignedOut
          : isUserSignedOut as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

class _$_SettingsAuthenticationState implements _SettingsAuthenticationState {
  const _$_SettingsAuthenticationState(
      {@required this.isSigningOut,
      @required this.isUserSignedOut,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isSigningOut != null),
        assert(isUserSignedOut != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isSigningOut;
  @override
  final bool isUserSignedOut;
  @override
  final Option<Either<AuthenticationFailure, dynamic>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsAuthenticationState(isSigningOut: $isSigningOut, isUserSignedOut: $isUserSignedOut, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsAuthenticationState &&
            (identical(other.isSigningOut, isSigningOut) ||
                const DeepCollectionEquality()
                    .equals(other.isSigningOut, isSigningOut)) &&
            (identical(other.isUserSignedOut, isUserSignedOut) ||
                const DeepCollectionEquality()
                    .equals(other.isUserSignedOut, isUserSignedOut)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSigningOut) ^
      const DeepCollectionEquality().hash(isUserSignedOut) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @override
  _$SettingsAuthenticationStateCopyWith<_SettingsAuthenticationState>
      get copyWith => __$SettingsAuthenticationStateCopyWithImpl<
          _SettingsAuthenticationState>(this, _$identity);
}

abstract class _SettingsAuthenticationState
    implements SettingsAuthenticationState {
  const factory _SettingsAuthenticationState(
          {@required
              bool isSigningOut,
          @required
              bool isUserSignedOut,
          @required
              Option<Either<AuthenticationFailure, dynamic>>
                  authenticationFailureOrSuccessOption}) =
      _$_SettingsAuthenticationState;

  @override
  bool get isSigningOut;
  @override
  bool get isUserSignedOut;
  @override
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;
  @override
  _$SettingsAuthenticationStateCopyWith<_SettingsAuthenticationState>
      get copyWith;
}
