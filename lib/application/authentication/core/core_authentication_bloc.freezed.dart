// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreAuthenticationEventTearOff {
  const _$CoreAuthenticationEventTearOff();

// ignore: unused_element
  AppLaunched appLaunched() {
    return const AppLaunched();
  }

// ignore: unused_element
  UserAuthenticated userAuthenticated() {
    return const UserAuthenticated();
  }

// ignore: unused_element
  UserLoggedOut userLoggedOut() {
    return const UserLoggedOut();
  }
}

/// @nodoc
// ignore: unused_element
const $CoreAuthenticationEvent = _$CoreAuthenticationEventTearOff();

/// @nodoc
mixin _$CoreAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunched(),
    @required TResult userAuthenticated(),
    @required TResult userLoggedOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userAuthenticated(),
    TResult userLoggedOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult userLoggedOut(UserLoggedOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userAuthenticated(UserAuthenticated value),
    TResult userLoggedOut(UserLoggedOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreAuthenticationEventCopyWith<$Res> {
  factory $CoreAuthenticationEventCopyWith(CoreAuthenticationEvent value,
          $Res Function(CoreAuthenticationEvent) then) =
      _$CoreAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $CoreAuthenticationEventCopyWith<$Res> {
  _$CoreAuthenticationEventCopyWithImpl(this._value, this._then);

  final CoreAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationEvent) _then;
}

/// @nodoc
abstract class $AppLaunchedCopyWith<$Res> {
  factory $AppLaunchedCopyWith(
          AppLaunched value, $Res Function(AppLaunched) then) =
      _$AppLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLaunchedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $AppLaunchedCopyWith<$Res> {
  _$AppLaunchedCopyWithImpl(
      AppLaunched _value, $Res Function(AppLaunched) _then)
      : super(_value, (v) => _then(v as AppLaunched));

  @override
  AppLaunched get _value => super._value as AppLaunched;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult appLaunched(),
    @required TResult userAuthenticated(),
    @required TResult userLoggedOut(),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userAuthenticated(),
    TResult userLoggedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appLaunched != null) {
      return appLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult userLoggedOut(UserLoggedOut value),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userAuthenticated(UserAuthenticated value),
    TResult userLoggedOut(UserLoggedOut value),
    @required TResult orElse(),
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

/// @nodoc
abstract class $UserAuthenticatedCopyWith<$Res> {
  factory $UserAuthenticatedCopyWith(
          UserAuthenticated value, $Res Function(UserAuthenticated) then) =
      _$UserAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAuthenticatedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $UserAuthenticatedCopyWith<$Res> {
  _$UserAuthenticatedCopyWithImpl(
      UserAuthenticated _value, $Res Function(UserAuthenticated) _then)
      : super(_value, (v) => _then(v as UserAuthenticated));

  @override
  UserAuthenticated get _value => super._value as UserAuthenticated;
}

/// @nodoc
class _$UserAuthenticated implements UserAuthenticated {
  const _$UserAuthenticated();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.userAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunched(),
    @required TResult userAuthenticated(),
    @required TResult userLoggedOut(),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return userAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userAuthenticated(),
    TResult userLoggedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticated != null) {
      return userAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult userLoggedOut(UserLoggedOut value),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userAuthenticated(UserAuthenticated value),
    TResult userLoggedOut(UserLoggedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticated implements CoreAuthenticationEvent {
  const factory UserAuthenticated() = _$UserAuthenticated;
}

/// @nodoc
abstract class $UserLoggedOutCopyWith<$Res> {
  factory $UserLoggedOutCopyWith(
          UserLoggedOut value, $Res Function(UserLoggedOut) then) =
      _$UserLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLoggedOutCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $UserLoggedOutCopyWith<$Res> {
  _$UserLoggedOutCopyWithImpl(
      UserLoggedOut _value, $Res Function(UserLoggedOut) _then)
      : super(_value, (v) => _then(v as UserLoggedOut));

  @override
  UserLoggedOut get _value => super._value as UserLoggedOut;
}

/// @nodoc
class _$UserLoggedOut implements UserLoggedOut {
  const _$UserLoggedOut();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.userLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunched(),
    @required TResult userAuthenticated(),
    @required TResult userLoggedOut(),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userAuthenticated(),
    TResult userLoggedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult userLoggedOut(UserLoggedOut value),
  }) {
    assert(appLaunched != null);
    assert(userAuthenticated != null);
    assert(userLoggedOut != null);
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userAuthenticated(UserAuthenticated value),
    TResult userLoggedOut(UserLoggedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class UserLoggedOut implements CoreAuthenticationEvent {
  const factory UserLoggedOut() = _$UserLoggedOut;
}

/// @nodoc
class _$CoreAuthenticationStateTearOff {
  const _$CoreAuthenticationStateTearOff();

// ignore: unused_element
  _CheckingUserAnonymity checkingUserAnonymity() {
    return const _CheckingUserAnonymity();
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UserAnonymityChecked userAnonymityChecked(bool isAnonymous) {
    return _UserAnonymityChecked(
      isAnonymous,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreAuthenticationState = _$CoreAuthenticationStateTearOff();

/// @nodoc
mixin _$CoreAuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkingUserAnonymity(),
    @required TResult initial(),
    @required TResult userAnonymityChecked(bool isAnonymous),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkingUserAnonymity(),
    TResult initial(),
    TResult userAnonymityChecked(bool isAnonymous),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    @required TResult initial(_Initial value),
    @required TResult userAnonymityChecked(_UserAnonymityChecked value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    TResult initial(_Initial value),
    TResult userAnonymityChecked(_UserAnonymityChecked value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreAuthenticationStateCopyWith<$Res> {
  factory $CoreAuthenticationStateCopyWith(CoreAuthenticationState value,
          $Res Function(CoreAuthenticationState) then) =
      _$CoreAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  _$CoreAuthenticationStateCopyWithImpl(this._value, this._then);

  final CoreAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationState) _then;
}

/// @nodoc
abstract class _$CheckingUserAnonymityCopyWith<$Res> {
  factory _$CheckingUserAnonymityCopyWith(_CheckingUserAnonymity value,
          $Res Function(_CheckingUserAnonymity) then) =
      __$CheckingUserAnonymityCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckingUserAnonymityCopyWithImpl<$Res>
    extends _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements _$CheckingUserAnonymityCopyWith<$Res> {
  __$CheckingUserAnonymityCopyWithImpl(_CheckingUserAnonymity _value,
      $Res Function(_CheckingUserAnonymity) _then)
      : super(_value, (v) => _then(v as _CheckingUserAnonymity));

  @override
  _CheckingUserAnonymity get _value => super._value as _CheckingUserAnonymity;
}

/// @nodoc
class _$_CheckingUserAnonymity implements _CheckingUserAnonymity {
  const _$_CheckingUserAnonymity();

  @override
  String toString() {
    return 'CoreAuthenticationState.checkingUserAnonymity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckingUserAnonymity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkingUserAnonymity(),
    @required TResult initial(),
    @required TResult userAnonymityChecked(bool isAnonymous),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return checkingUserAnonymity();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkingUserAnonymity(),
    TResult initial(),
    TResult userAnonymityChecked(bool isAnonymous),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkingUserAnonymity != null) {
      return checkingUserAnonymity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    @required TResult initial(_Initial value),
    @required TResult userAnonymityChecked(_UserAnonymityChecked value),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return checkingUserAnonymity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    TResult initial(_Initial value),
    TResult userAnonymityChecked(_UserAnonymityChecked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkingUserAnonymity != null) {
      return checkingUserAnonymity(this);
    }
    return orElse();
  }
}

abstract class _CheckingUserAnonymity implements CoreAuthenticationState {
  const factory _CheckingUserAnonymity() = _$_CheckingUserAnonymity;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CoreAuthenticationStateCopyWithImpl<$Res>
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
    return 'CoreAuthenticationState.initial()';
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
    @required TResult checkingUserAnonymity(),
    @required TResult initial(),
    @required TResult userAnonymityChecked(bool isAnonymous),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkingUserAnonymity(),
    TResult initial(),
    TResult userAnonymityChecked(bool isAnonymous),
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
    @required TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    @required TResult initial(_Initial value),
    @required TResult userAnonymityChecked(_UserAnonymityChecked value),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    TResult initial(_Initial value),
    TResult userAnonymityChecked(_UserAnonymityChecked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoreAuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserAnonymityCheckedCopyWith<$Res> {
  factory _$UserAnonymityCheckedCopyWith(_UserAnonymityChecked value,
          $Res Function(_UserAnonymityChecked) then) =
      __$UserAnonymityCheckedCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
}

/// @nodoc
class __$UserAnonymityCheckedCopyWithImpl<$Res>
    extends _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements _$UserAnonymityCheckedCopyWith<$Res> {
  __$UserAnonymityCheckedCopyWithImpl(
      _UserAnonymityChecked _value, $Res Function(_UserAnonymityChecked) _then)
      : super(_value, (v) => _then(v as _UserAnonymityChecked));

  @override
  _UserAnonymityChecked get _value => super._value as _UserAnonymityChecked;

  @override
  $Res call({
    Object isAnonymous = freezed,
  }) {
    return _then(_UserAnonymityChecked(
      isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

/// @nodoc
class _$_UserAnonymityChecked implements _UserAnonymityChecked {
  const _$_UserAnonymityChecked(this.isAnonymous) : assert(isAnonymous != null);

  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'CoreAuthenticationState.userAnonymityChecked(isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAnonymityChecked &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAnonymous);

  @JsonKey(ignore: true)
  @override
  _$UserAnonymityCheckedCopyWith<_UserAnonymityChecked> get copyWith =>
      __$UserAnonymityCheckedCopyWithImpl<_UserAnonymityChecked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkingUserAnonymity(),
    @required TResult initial(),
    @required TResult userAnonymityChecked(bool isAnonymous),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return userAnonymityChecked(isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkingUserAnonymity(),
    TResult initial(),
    TResult userAnonymityChecked(bool isAnonymous),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAnonymityChecked != null) {
      return userAnonymityChecked(isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    @required TResult initial(_Initial value),
    @required TResult userAnonymityChecked(_UserAnonymityChecked value),
  }) {
    assert(checkingUserAnonymity != null);
    assert(initial != null);
    assert(userAnonymityChecked != null);
    return userAnonymityChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkingUserAnonymity(_CheckingUserAnonymity value),
    TResult initial(_Initial value),
    TResult userAnonymityChecked(_UserAnonymityChecked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAnonymityChecked != null) {
      return userAnonymityChecked(this);
    }
    return orElse();
  }
}

abstract class _UserAnonymityChecked implements CoreAuthenticationState {
  const factory _UserAnonymityChecked(bool isAnonymous) =
      _$_UserAnonymityChecked;

  bool get isAnonymous;
  @JsonKey(ignore: true)
  _$UserAnonymityCheckedCopyWith<_UserAnonymityChecked> get copyWith;
}
