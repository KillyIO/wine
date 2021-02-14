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
  UserStatusChanged userStatusChanged() {
    return const UserStatusChanged();
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
    @required TResult userStatusChanged(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userStatusChanged(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userStatusChanged(UserStatusChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userStatusChanged(UserStatusChanged value),
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
    @required TResult userStatusChanged(),
  }) {
    assert(appLaunched != null);
    assert(userStatusChanged != null);
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userStatusChanged(),
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
    @required TResult userStatusChanged(UserStatusChanged value),
  }) {
    assert(appLaunched != null);
    assert(userStatusChanged != null);
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userStatusChanged(UserStatusChanged value),
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
abstract class $UserStatusChangedCopyWith<$Res> {
  factory $UserStatusChangedCopyWith(
          UserStatusChanged value, $Res Function(UserStatusChanged) then) =
      _$UserStatusChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStatusChangedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $UserStatusChangedCopyWith<$Res> {
  _$UserStatusChangedCopyWithImpl(
      UserStatusChanged _value, $Res Function(UserStatusChanged) _then)
      : super(_value, (v) => _then(v as UserStatusChanged));

  @override
  UserStatusChanged get _value => super._value as UserStatusChanged;
}

/// @nodoc
class _$UserStatusChanged implements UserStatusChanged {
  const _$UserStatusChanged();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.userStatusChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserStatusChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunched(),
    @required TResult userStatusChanged(),
  }) {
    assert(appLaunched != null);
    assert(userStatusChanged != null);
    return userStatusChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunched(),
    TResult userStatusChanged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userStatusChanged != null) {
      return userStatusChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunched(AppLaunched value),
    @required TResult userStatusChanged(UserStatusChanged value),
  }) {
    assert(appLaunched != null);
    assert(userStatusChanged != null);
    return userStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunched(AppLaunched value),
    TResult userStatusChanged(UserStatusChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userStatusChanged != null) {
      return userStatusChanged(this);
    }
    return orElse();
  }
}

abstract class UserStatusChanged implements CoreAuthenticationEvent {
  const factory UserStatusChanged() = _$UserStatusChanged;
}

/// @nodoc
class _$CoreAuthenticationStateTearOff {
  const _$CoreAuthenticationStateTearOff();

// ignore: unused_element
  _CoreAuthenticationState call({@required bool isAnonymous}) {
    return _CoreAuthenticationState(
      isAnonymous: isAnonymous,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreAuthenticationState = _$CoreAuthenticationStateTearOff();

/// @nodoc
mixin _$CoreAuthenticationState {
  bool get isAnonymous;

  @JsonKey(ignore: true)
  $CoreAuthenticationStateCopyWith<CoreAuthenticationState> get copyWith;
}

/// @nodoc
abstract class $CoreAuthenticationStateCopyWith<$Res> {
  factory $CoreAuthenticationStateCopyWith(CoreAuthenticationState value,
          $Res Function(CoreAuthenticationState) then) =
      _$CoreAuthenticationStateCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
}

/// @nodoc
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

/// @nodoc
abstract class _$CoreAuthenticationStateCopyWith<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  factory _$CoreAuthenticationStateCopyWith(_CoreAuthenticationState value,
          $Res Function(_CoreAuthenticationState) then) =
      __$CoreAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAnonymous});
}

/// @nodoc
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

/// @nodoc
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith;
}
