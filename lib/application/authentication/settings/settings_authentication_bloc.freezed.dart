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
  ResetBloc resetBloc() {
    return const ResetBloc();
  }

// ignore: unused_element
  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsAuthenticationEvent = _$SettingsAuthenticationEventTearOff();

/// @nodoc
mixin _$SettingsAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBloc(),
    @required TResult signOutPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBloc(),
    TResult signOutPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBloc(ResetBloc value),
    @required TResult signOutPressed(SignOutPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBloc(ResetBloc value),
    TResult signOutPressed(SignOutPressed value),
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
abstract class $ResetBlocCopyWith<$Res> {
  factory $ResetBlocCopyWith(ResetBloc value, $Res Function(ResetBloc) then) =
      _$ResetBlocCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $ResetBlocCopyWith<$Res> {
  _$ResetBlocCopyWithImpl(ResetBloc _value, $Res Function(ResetBloc) _then)
      : super(_value, (v) => _then(v as ResetBloc));

  @override
  ResetBloc get _value => super._value as ResetBloc;
}

/// @nodoc
class _$ResetBloc implements ResetBloc {
  const _$ResetBloc();

  @override
  String toString() {
    return 'SettingsAuthenticationEvent.resetBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetBloc(),
    @required TResult signOutPressed(),
  }) {
    assert(resetBloc != null);
    assert(signOutPressed != null);
    return resetBloc();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBloc(),
    TResult signOutPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBloc != null) {
      return resetBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBloc(ResetBloc value),
    @required TResult signOutPressed(SignOutPressed value),
  }) {
    assert(resetBloc != null);
    assert(signOutPressed != null);
    return resetBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBloc(ResetBloc value),
    TResult signOutPressed(SignOutPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBloc != null) {
      return resetBloc(this);
    }
    return orElse();
  }
}

abstract class ResetBloc implements SettingsAuthenticationEvent {
  const factory ResetBloc() = _$ResetBloc;
}

/// @nodoc
abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutPressedCopyWithImpl<$Res>
    extends _$SettingsAuthenticationEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult resetBloc(),
    @required TResult signOutPressed(),
  }) {
    assert(resetBloc != null);
    assert(signOutPressed != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetBloc(),
    TResult signOutPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetBloc(ResetBloc value),
    @required TResult signOutPressed(SignOutPressed value),
  }) {
    assert(resetBloc != null);
    assert(signOutPressed != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetBloc(ResetBloc value),
    TResult signOutPressed(SignOutPressed value),
    @required TResult orElse(),
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

/// @nodoc
class _$SettingsAuthenticationStateTearOff {
  const _$SettingsAuthenticationStateTearOff();

// ignore: unused_element
  _SettingsAuthenticationState call(
      {@required
          bool isSigningOut,
      @required
          Option<Either<AuthenticationFailure, Unit>> authenticationOption}) {
    return _SettingsAuthenticationState(
      isSigningOut: isSigningOut,
      authenticationOption: authenticationOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsAuthenticationState = _$SettingsAuthenticationStateTearOff();

/// @nodoc
mixin _$SettingsAuthenticationState {
  bool get isSigningOut;
  Option<Either<AuthenticationFailure, Unit>> get authenticationOption;

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
      Option<Either<AuthenticationFailure, Unit>> authenticationOption});
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
    Object authenticationOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      authenticationOption: authenticationOption == freezed
          ? _value.authenticationOption
          : authenticationOption as Option<Either<AuthenticationFailure, Unit>>,
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
      Option<Either<AuthenticationFailure, Unit>> authenticationOption});
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
    Object authenticationOption = freezed,
  }) {
    return _then(_SettingsAuthenticationState(
      isSigningOut:
          isSigningOut == freezed ? _value.isSigningOut : isSigningOut as bool,
      authenticationOption: authenticationOption == freezed
          ? _value.authenticationOption
          : authenticationOption as Option<Either<AuthenticationFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SettingsAuthenticationState implements _SettingsAuthenticationState {
  const _$_SettingsAuthenticationState(
      {@required this.isSigningOut, @required this.authenticationOption})
      : assert(isSigningOut != null),
        assert(authenticationOption != null);

  @override
  final bool isSigningOut;
  @override
  final Option<Either<AuthenticationFailure, Unit>> authenticationOption;

  @override
  String toString() {
    return 'SettingsAuthenticationState(isSigningOut: $isSigningOut, authenticationOption: $authenticationOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsAuthenticationState &&
            (identical(other.isSigningOut, isSigningOut) ||
                const DeepCollectionEquality()
                    .equals(other.isSigningOut, isSigningOut)) &&
            (identical(other.authenticationOption, authenticationOption) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationOption, authenticationOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSigningOut) ^
      const DeepCollectionEquality().hash(authenticationOption);

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
          Option<Either<AuthenticationFailure, Unit>>
              authenticationOption}) = _$_SettingsAuthenticationState;

  @override
  bool get isSigningOut;
  @override
  Option<Either<AuthenticationFailure, Unit>> get authenticationOption;
  @override
  @JsonKey(ignore: true)
  _$SettingsAuthenticationStateCopyWith<_SettingsAuthenticationState>
      get copyWith;
}
