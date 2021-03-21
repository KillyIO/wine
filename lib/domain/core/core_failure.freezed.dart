// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreFailureTearOff {
  const _$CoreFailureTearOff();

// ignore: unused_element
  _Auth auth(AuthFailure f) {
    return _Auth(
      f,
    );
  }

// ignore: unused_element
  _DefaultCovers defaultCovers(DefaultCoversFailure f) {
    return _DefaultCovers(
      f,
    );
  }

// ignore: unused_element
  _Sessions sessions(SessionsFailure f) {
    return _Sessions(
      f,
    );
  }

// ignore: unused_element
  _Settings settings(SettingsFailure f) {
    return _Settings(
      f,
    );
  }

// ignore: unused_element
  _User user(UserFailure f) {
    return _User(
      f,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreFailure = _$CoreFailureTearOff();

/// @nodoc
mixin _$CoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res> implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  final CoreFailure _value;
  // ignore: unused_field
  final $Res Function(CoreFailure) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) then) =
      __$AuthCopyWithImpl<$Res>;
  $Res call({AuthFailure f});

  $AuthFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(_Auth _value, $Res Function(_Auth) _then)
      : super(_value, (v) => _then(v as _Auth));

  @override
  _Auth get _value => super._value as _Auth;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Auth(
      f == freezed ? _value.f : f as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Auth implements _Auth {
  const _$_Auth(this.f) : assert(f != null);

  @override
  final AuthFailure f;

  @override
  String toString() {
    return 'CoreFailure.auth(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<_Auth> get copyWith =>
      __$AuthCopyWithImpl<_Auth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements CoreFailure {
  const factory _Auth(AuthFailure f) = _$_Auth;

  AuthFailure get f;
  @JsonKey(ignore: true)
  _$AuthCopyWith<_Auth> get copyWith;
}

/// @nodoc
abstract class _$DefaultCoversCopyWith<$Res> {
  factory _$DefaultCoversCopyWith(
          _DefaultCovers value, $Res Function(_DefaultCovers) then) =
      __$DefaultCoversCopyWithImpl<$Res>;
  $Res call({DefaultCoversFailure f});

  $DefaultCoversFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$DefaultCoversCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$DefaultCoversCopyWith<$Res> {
  __$DefaultCoversCopyWithImpl(
      _DefaultCovers _value, $Res Function(_DefaultCovers) _then)
      : super(_value, (v) => _then(v as _DefaultCovers));

  @override
  _DefaultCovers get _value => super._value as _DefaultCovers;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_DefaultCovers(
      f == freezed ? _value.f : f as DefaultCoversFailure,
    ));
  }

  @override
  $DefaultCoversFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $DefaultCoversFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_DefaultCovers implements _DefaultCovers {
  const _$_DefaultCovers(this.f) : assert(f != null);

  @override
  final DefaultCoversFailure f;

  @override
  String toString() {
    return 'CoreFailure.defaultCovers(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DefaultCovers &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$DefaultCoversCopyWith<_DefaultCovers> get copyWith =>
      __$DefaultCoversCopyWithImpl<_DefaultCovers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return defaultCovers(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCovers != null) {
      return defaultCovers(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return defaultCovers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCovers != null) {
      return defaultCovers(this);
    }
    return orElse();
  }
}

abstract class _DefaultCovers implements CoreFailure {
  const factory _DefaultCovers(DefaultCoversFailure f) = _$_DefaultCovers;

  DefaultCoversFailure get f;
  @JsonKey(ignore: true)
  _$DefaultCoversCopyWith<_DefaultCovers> get copyWith;
}

/// @nodoc
abstract class _$SessionsCopyWith<$Res> {
  factory _$SessionsCopyWith(_Sessions value, $Res Function(_Sessions) then) =
      __$SessionsCopyWithImpl<$Res>;
  $Res call({SessionsFailure f});

  $SessionsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$SessionsCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$SessionsCopyWith<$Res> {
  __$SessionsCopyWithImpl(_Sessions _value, $Res Function(_Sessions) _then)
      : super(_value, (v) => _then(v as _Sessions));

  @override
  _Sessions get _value => super._value as _Sessions;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Sessions(
      f == freezed ? _value.f : f as SessionsFailure,
    ));
  }

  @override
  $SessionsFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $SessionsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Sessions implements _Sessions {
  const _$_Sessions(this.f) : assert(f != null);

  @override
  final SessionsFailure f;

  @override
  String toString() {
    return 'CoreFailure.sessions(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sessions &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$SessionsCopyWith<_Sessions> get copyWith =>
      __$SessionsCopyWithImpl<_Sessions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return sessions(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessions != null) {
      return sessions(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return sessions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessions != null) {
      return sessions(this);
    }
    return orElse();
  }
}

abstract class _Sessions implements CoreFailure {
  const factory _Sessions(SessionsFailure f) = _$_Sessions;

  SessionsFailure get f;
  @JsonKey(ignore: true)
  _$SessionsCopyWith<_Sessions> get copyWith;
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  $Res call({SettingsFailure f});

  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Settings(
      f == freezed ? _value.f : f as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Settings implements _Settings {
  const _$_Settings(this.f) : assert(f != null);

  @override
  final SettingsFailure f;

  @override
  String toString() {
    return 'CoreFailure.settings(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return settings(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settings != null) {
      return settings(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements CoreFailure {
  const factory _Settings(SettingsFailure f) = _$_Settings;

  SettingsFailure get f;
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith;
}

/// @nodoc
abstract class _$UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  $Res call({UserFailure f});

  $UserFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_User(
      f == freezed ? _value.f : f as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $UserFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User(this.f) : assert(f != null);

  @override
  final UserFailure f;

  @override
  String toString() {
    return 'CoreFailure.user(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthFailure f),
    @required TResult defaultCovers(DefaultCoversFailure f),
    @required TResult sessions(SessionsFailure f),
    @required TResult settings(SettingsFailure f),
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return user(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult defaultCovers(DefaultCoversFailure f),
    TResult sessions(SessionsFailure f),
    TResult settings(SettingsFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult defaultCovers(_DefaultCovers value),
    @required TResult sessions(_Sessions value),
    @required TResult settings(_Settings value),
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(defaultCovers != null);
    assert(sessions != null);
    assert(settings != null);
    assert(user != null);
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
    TResult defaultCovers(_DefaultCovers value),
    TResult sessions(_Sessions value),
    TResult settings(_Settings value),
    TResult user(_User value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements CoreFailure {
  const factory _User(UserFailure f) = _$_User;

  UserFailure get f;
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
