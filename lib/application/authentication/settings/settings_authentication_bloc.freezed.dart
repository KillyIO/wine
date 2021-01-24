// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsAuthenticationEventTearOff {
  const _$SettingsAuthenticationEventTearOff();

// ignore: unused_element
  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

// ignore: unused_element
  SignOutPressedEVT signOutPressedEVT() {
    return const SignOutPressedEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsAuthenticationEvent = _$SettingsAuthenticationEventTearOff();

/// @nodoc
mixin _$SettingsAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult signOutPressedEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult signOutPressedEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult signOutPressedEVT(SignOutPressedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult signOutPressedEVT(SignOutPressedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsAuthenticationEventCopyWith<$Res> {
  factory $SettingsAuthenticationEventCopyWith(
          SettingsAuthenticationEvent value,
          $Res Function(SettingsAuthenticationEvent) then) =
      _$SettingsAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $SettingsAuthenticationEventCopyWith<$Res> {
  _$SettingsAuthenticationEventCopyWithImpl(this._value, this._then);

  final SettingsAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsAuthenticationEvent) _then;
}

/// @nodoc
abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
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
    return 'SettingsAuthenticationEvent.resetBlocEVT()';
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
    @required TResult signOutPressedEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(signOutPressedEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult signOutPressedEVT(),
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
    @required TResult signOutPressedEVT(SignOutPressedEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(signOutPressedEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult signOutPressedEVT(SignOutPressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements SettingsAuthenticationEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

/// @nodoc
abstract class $SignOutPressedEVTCopyWith<$Res> {
  factory $SignOutPressedEVTCopyWith(
          SignOutPressedEVT value, $Res Function(SignOutPressedEVT) then) =
      _$SignOutPressedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutPressedEVTCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $SignOutPressedEVTCopyWith<$Res> {
  _$SignOutPressedEVTCopyWithImpl(
      SignOutPressedEVT _value, $Res Function(SignOutPressedEVT) _then)
      : super(_value, (v) => _then(v as SignOutPressedEVT));

  @override
  SignOutPressedEVT get _value => super._value as SignOutPressedEVT;
}

/// @nodoc
class _$SignOutPressedEVT implements SignOutPressedEVT {
  const _$SignOutPressedEVT();

  @override
  String toString() {
    return 'SettingsAuthenticationEvent.signOutPressedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBlocEVT(),
    @required TResult signOutPressedEVT(),
  }) {
    assert(resetBlocEVT != null);
    assert(signOutPressedEVT != null);
    return signOutPressedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBlocEVT(),
    TResult signOutPressedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressedEVT != null) {
      return signOutPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required TResult signOutPressedEVT(SignOutPressedEVT value),
  }) {
    assert(resetBlocEVT != null);
    assert(signOutPressedEVT != null);
    return signOutPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult signOutPressedEVT(SignOutPressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressedEVT != null) {
      return signOutPressedEVT(this);
    }
    return orElse();
  }
}

abstract class SignOutPressedEVT implements SettingsAuthenticationEvent {
  const factory SignOutPressedEVT() = _$SignOutPressedEVT;
}

/// @nodoc
class _$SettingsAuthenticationStateTearOff {
  const _$SettingsAuthenticationStateTearOff();

// ignore: unused_element
  _SettingsAuthenticationState call(
      {@required
          bool isSigningOut,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authenticationFailureOrSuccessOption}) {
    return _SettingsAuthenticationState(
      isSigningOut: isSigningOut,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsAuthenticationState = _$SettingsAuthenticationStateTearOff();

/// @nodoc
mixin _$SettingsAuthenticationState {
  bool get isSigningOut;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SettingsAuthenticationStateCopyWith<SettingsAuthenticationState>
      get copyWith;
}

/// @nodoc
abstract class $SettingsAuthenticationStateCopyWith<$Res> {
  factory $SettingsAuthenticationStateCopyWith(
          SettingsAuthenticationState value,
          $Res Function(SettingsAuthenticationState) then) =
      _$SettingsAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSigningOut,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

/// @nodoc
class _$SettingsAuthenticationStateCopyWithImpl<$Res>
    implements $SettingsAuthenticationStateCopyWith<$Res> {
  _$SettingsAuthenticationStateCopyWithImpl(this._value, this._then);

  final SettingsAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SettingsAuthenticationState) _then;

  @override
  $Res call({
    Object isSigningOut = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
    ));
  }
}

/// @nodoc
abstract class _$SettingsAuthenticationStateCopyWith<$Res>
    implements $SettingsAuthenticationStateCopyWith<$Res> {
  factory _$SettingsAuthenticationStateCopyWith(
          _SettingsAuthenticationState value,
          $Res Function(_SettingsAuthenticationState) then) =
      __$SettingsAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSigningOut,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption});
}

/// @nodoc
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
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsAuthenticationState(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
    ));
  }
}

/// @nodoc
class _$_SettingsAuthenticationState implements _SettingsAuthenticationState {
  const _$_SettingsAuthenticationState(
      {@required this.isSigningOut,
      @required this.authenticationFailureOrSuccessOption})
      : assert(isSigningOut != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final bool isSigningOut;
  @override
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsAuthenticationState(isSigningOut: $isSigningOut, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsAuthenticationState &&
            (identical(other.isSigningOut, isSigningOut) ||
                const DeepCollectionEquality()
                    .equals(other.isSigningOut, isSigningOut)) &&
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
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @JsonKey(ignore: true)
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
              Option<Either<AuthenticationFailure, AuthenticationSuccess>>
                  authenticationFailureOrSuccessOption}) =
      _$_SettingsAuthenticationState;

  @override
  bool get isSigningOut;
  @override
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SettingsAuthenticationStateCopyWith<_SettingsAuthenticationState>
      get copyWith;
}
