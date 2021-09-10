// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreFailureTearOff {
  const _$CoreFailureTearOff();

  _Auth auth(AuthFailure f) {
    return _Auth(
      f,
    );
  }

  _DefaultCovers defaultCovers(DefaultCoversFailure f) {
    return _DefaultCovers(
      f,
    );
  }

  _Series series(SeriesFailure f) {
    return _Series(
      f,
    );
  }

  _Sessions sessions(SessionsFailure f) {
    return _Sessions(
      f,
    );
  }

  _Settings settings(SettingsFailure f) {
    return _Settings(
      f,
    );
  }

  _User user(UserFailure f) {
    return _User(
      f,
    );
  }
}

/// @nodoc
const $CoreFailure = _$CoreFailureTearOff();

/// @nodoc
mixin _$CoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? f = freezed,
  }) {
    return _then(_Auth(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get f {
    return $AuthFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Auth implements _Auth {
  const _$_Auth(this.f);

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
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements CoreFailure {
  const factory _Auth(AuthFailure f) = _$_Auth;

  AuthFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthCopyWith<_Auth> get copyWith => throw _privateConstructorUsedError;
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
    Object? f = freezed,
  }) {
    return _then(_DefaultCovers(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as DefaultCoversFailure,
    ));
  }

  @override
  $DefaultCoversFailureCopyWith<$Res> get f {
    return $DefaultCoversFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_DefaultCovers implements _DefaultCovers {
  const _$_DefaultCovers(this.f);

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
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return defaultCovers(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (defaultCovers != null) {
      return defaultCovers(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return defaultCovers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (defaultCovers != null) {
      return defaultCovers(this);
    }
    return orElse();
  }
}

abstract class _DefaultCovers implements CoreFailure {
  const factory _DefaultCovers(DefaultCoversFailure f) = _$_DefaultCovers;

  DefaultCoversFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DefaultCoversCopyWith<_DefaultCovers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  $Res call({SeriesFailure f});

  $SeriesFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$SeriesCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$SeriesCopyWith<$Res> {
  __$SeriesCopyWithImpl(_Series _value, $Res Function(_Series) _then)
      : super(_value, (v) => _then(v as _Series));

  @override
  _Series get _value => super._value as _Series;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Series(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SeriesFailure,
    ));
  }

  @override
  $SeriesFailureCopyWith<$Res> get f {
    return $SeriesFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Series implements _Series {
  const _$_Series(this.f);

  @override
  final SeriesFailure f;

  @override
  String toString() {
    return 'CoreFailure.series(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return series(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (series != null) {
      return series(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return series(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (series != null) {
      return series(this);
    }
    return orElse();
  }
}

abstract class _Series implements CoreFailure {
  const factory _Series(SeriesFailure f) = _$_Series;

  SeriesFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith => throw _privateConstructorUsedError;
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
    Object? f = freezed,
  }) {
    return _then(_Sessions(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SessionsFailure,
    ));
  }

  @override
  $SessionsFailureCopyWith<$Res> get f {
    return $SessionsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Sessions implements _Sessions {
  const _$_Sessions(this.f);

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
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return sessions(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (sessions != null) {
      return sessions(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return sessions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (sessions != null) {
      return sessions(this);
    }
    return orElse();
  }
}

abstract class _Sessions implements CoreFailure {
  const factory _Sessions(SessionsFailure f) = _$_Sessions;

  SessionsFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SessionsCopyWith<_Sessions> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? f = freezed,
  }) {
    return _then(_Settings(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get f {
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(this.f);

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
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return settings(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements CoreFailure {
  const factory _Settings(SettingsFailure f) = _$_Settings;

  SettingsFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? f = freezed,
  }) {
    return _then(_User(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get f {
    return $UserFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(this.f);

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
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SeriesFailure f) series,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(UserFailure f) user,
  }) {
    return user(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SeriesFailure f)? series,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Series value) series,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_User value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Series value)? series,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements CoreFailure {
  const factory _User(UserFailure f) = _$_User;

  UserFailure get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
