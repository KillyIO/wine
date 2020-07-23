// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreAuthenticationEventTearOff {
  const _$CoreAuthenticationEventTearOff();

// ignore: unused_element
  AppLaunchedEVT appLaunchedEVT() {
    return const AppLaunchedEVT();
  }

// ignore: unused_element
  UserStatusChangedEVT userStatusChangedEVT() {
    return const UserStatusChangedEVT();
  }
}

// ignore: unused_element
const $CoreAuthenticationEvent = _$CoreAuthenticationEventTearOff();

mixin _$CoreAuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunchedEVT(),
    @required Result userStatusChangedEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunchedEVT(),
    Result userStatusChangedEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunchedEVT(AppLaunchedEVT value),
    @required Result userStatusChangedEVT(UserStatusChangedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunchedEVT(AppLaunchedEVT value),
    Result userStatusChangedEVT(UserStatusChangedEVT value),
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

abstract class $AppLaunchedEVTCopyWith<$Res> {
  factory $AppLaunchedEVTCopyWith(
          AppLaunchedEVT value, $Res Function(AppLaunchedEVT) then) =
      _$AppLaunchedEVTCopyWithImpl<$Res>;
}

class _$AppLaunchedEVTCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $AppLaunchedEVTCopyWith<$Res> {
  _$AppLaunchedEVTCopyWithImpl(
      AppLaunchedEVT _value, $Res Function(AppLaunchedEVT) _then)
      : super(_value, (v) => _then(v as AppLaunchedEVT));

  @override
  AppLaunchedEVT get _value => super._value as AppLaunchedEVT;
}

class _$AppLaunchedEVT implements AppLaunchedEVT {
  const _$AppLaunchedEVT();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.appLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunchedEVT(),
    @required Result userStatusChangedEVT(),
  }) {
    assert(appLaunchedEVT != null);
    assert(userStatusChangedEVT != null);
    return appLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunchedEVT(),
    Result userStatusChangedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunchedEVT(AppLaunchedEVT value),
    @required Result userStatusChangedEVT(UserStatusChangedEVT value),
  }) {
    assert(appLaunchedEVT != null);
    assert(userStatusChangedEVT != null);
    return appLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunchedEVT(AppLaunchedEVT value),
    Result userStatusChangedEVT(UserStatusChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AppLaunchedEVT implements CoreAuthenticationEvent {
  const factory AppLaunchedEVT() = _$AppLaunchedEVT;
}

abstract class $UserStatusChangedEVTCopyWith<$Res> {
  factory $UserStatusChangedEVTCopyWith(UserStatusChangedEVT value,
          $Res Function(UserStatusChangedEVT) then) =
      _$UserStatusChangedEVTCopyWithImpl<$Res>;
}

class _$UserStatusChangedEVTCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $UserStatusChangedEVTCopyWith<$Res> {
  _$UserStatusChangedEVTCopyWithImpl(
      UserStatusChangedEVT _value, $Res Function(UserStatusChangedEVT) _then)
      : super(_value, (v) => _then(v as UserStatusChangedEVT));

  @override
  UserStatusChangedEVT get _value => super._value as UserStatusChangedEVT;
}

class _$UserStatusChangedEVT implements UserStatusChangedEVT {
  const _$UserStatusChangedEVT();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.userStatusChangedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserStatusChangedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunchedEVT(),
    @required Result userStatusChangedEVT(),
  }) {
    assert(appLaunchedEVT != null);
    assert(userStatusChangedEVT != null);
    return userStatusChangedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunchedEVT(),
    Result userStatusChangedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userStatusChangedEVT != null) {
      return userStatusChangedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunchedEVT(AppLaunchedEVT value),
    @required Result userStatusChangedEVT(UserStatusChangedEVT value),
  }) {
    assert(appLaunchedEVT != null);
    assert(userStatusChangedEVT != null);
    return userStatusChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunchedEVT(AppLaunchedEVT value),
    Result userStatusChangedEVT(UserStatusChangedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userStatusChangedEVT != null) {
      return userStatusChangedEVT(this);
    }
    return orElse();
  }
}

abstract class UserStatusChangedEVT implements CoreAuthenticationEvent {
  const factory UserStatusChangedEVT() = _$UserStatusChangedEVT;
}

class _$CoreAuthenticationStateTearOff {
  const _$CoreAuthenticationStateTearOff();

// ignore: unused_element
  _CoreAuthenticationState call({@required bool isAnonymous}) {
    return _CoreAuthenticationState(
      isAnonymous: isAnonymous,
    );
  }
}

// ignore: unused_element
const $CoreAuthenticationState = _$CoreAuthenticationStateTearOff();

mixin _$CoreAuthenticationState {
  bool get isAnonymous;

  $CoreAuthenticationStateCopyWith<CoreAuthenticationState> get copyWith;
}

abstract class $CoreAuthenticationStateCopyWith<$Res> {
  factory $CoreAuthenticationStateCopyWith(CoreAuthenticationState value,
          $Res Function(CoreAuthenticationState) then) =
      _$CoreAuthenticationStateCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
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
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

abstract class _$CoreAuthenticationStateCopyWith<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  factory _$CoreAuthenticationStateCopyWith(_CoreAuthenticationState value,
          $Res Function(_CoreAuthenticationState) then) =
      __$CoreAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAnonymous});
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
  }) {
    return _then(_CoreAuthenticationState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

class _$_CoreAuthenticationState implements _CoreAuthenticationState {
  const _$_CoreAuthenticationState({@required this.isAnonymous})
      : assert(isAnonymous != null);

  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'CoreAuthenticationState(isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreAuthenticationState &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAnonymous);

  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith =>
      __$CoreAuthenticationStateCopyWithImpl<_CoreAuthenticationState>(
          this, _$identity);
}

abstract class _CoreAuthenticationState implements CoreAuthenticationState {
  const factory _CoreAuthenticationState({@required bool isAnonymous}) =
      _$_CoreAuthenticationState;

  @override
  bool get isAnonymous;
  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith;
}
