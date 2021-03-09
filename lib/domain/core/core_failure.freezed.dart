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
    @required TResult user(UserFailure f),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
    TResult user(UserFailure f),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth value),
    @required TResult user(_User value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
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
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(user != null);
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
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
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(user != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
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
    @required TResult user(UserFailure f),
  }) {
    assert(auth != null);
    assert(user != null);
    return user(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthFailure f),
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
    @required TResult user(_User value),
  }) {
    assert(auth != null);
    assert(user != null);
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth value),
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
