// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDatabaseFailureTearOff {
  const _$UserDatabaseFailureTearOff();

// ignore: unused_element
  ServerErrorFailure serverErrorFailure() {
    return const ServerErrorFailure();
  }

// ignore: unused_element
  UserNotFoundFailure userNotFoundFailure() {
    return const UserNotFoundFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $UserDatabaseFailure = _$UserDatabaseFailureTearOff();

/// @nodoc
mixin _$UserDatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverErrorFailure(),
    @required TResult userNotFoundFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverErrorFailure(),
    TResult userNotFoundFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverErrorFailure(ServerErrorFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverErrorFailure(ServerErrorFailure value),
    TResult userNotFoundFailure(UserNotFoundFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserDatabaseFailureCopyWith<$Res> {
  factory $UserDatabaseFailureCopyWith(
          UserDatabaseFailure value, $Res Function(UserDatabaseFailure) then) =
      _$UserDatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDatabaseFailureCopyWithImpl<$Res>
    implements $UserDatabaseFailureCopyWith<$Res> {
  _$UserDatabaseFailureCopyWithImpl(this._value, this._then);

  final UserDatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(UserDatabaseFailure) _then;
}

/// @nodoc
abstract class $ServerErrorFailureCopyWith<$Res> {
  factory $ServerErrorFailureCopyWith(
          ServerErrorFailure value, $Res Function(ServerErrorFailure) then) =
      _$ServerErrorFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorFailureCopyWithImpl<$Res>
    extends _$UserDatabaseFailureCopyWithImpl<$Res>
    implements $ServerErrorFailureCopyWith<$Res> {
  _$ServerErrorFailureCopyWithImpl(
      ServerErrorFailure _value, $Res Function(ServerErrorFailure) _then)
      : super(_value, (v) => _then(v as ServerErrorFailure));

  @override
  ServerErrorFailure get _value => super._value as ServerErrorFailure;
}

/// @nodoc
class _$ServerErrorFailure implements ServerErrorFailure {
  const _$ServerErrorFailure();

  @override
  String toString() {
    return 'UserDatabaseFailure.serverErrorFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerErrorFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverErrorFailure(),
    @required TResult userNotFoundFailure(),
  }) {
    assert(serverErrorFailure != null);
    assert(userNotFoundFailure != null);
    return serverErrorFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverErrorFailure(),
    TResult userNotFoundFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverErrorFailure != null) {
      return serverErrorFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverErrorFailure(ServerErrorFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  }) {
    assert(serverErrorFailure != null);
    assert(userNotFoundFailure != null);
    return serverErrorFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverErrorFailure(ServerErrorFailure value),
    TResult userNotFoundFailure(UserNotFoundFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverErrorFailure != null) {
      return serverErrorFailure(this);
    }
    return orElse();
  }
}

abstract class ServerErrorFailure implements UserDatabaseFailure {
  const factory ServerErrorFailure() = _$ServerErrorFailure;
}

/// @nodoc
abstract class $UserNotFoundFailureCopyWith<$Res> {
  factory $UserNotFoundFailureCopyWith(
          UserNotFoundFailure value, $Res Function(UserNotFoundFailure) then) =
      _$UserNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundFailureCopyWithImpl<$Res>
    extends _$UserDatabaseFailureCopyWithImpl<$Res>
    implements $UserNotFoundFailureCopyWith<$Res> {
  _$UserNotFoundFailureCopyWithImpl(
      UserNotFoundFailure _value, $Res Function(UserNotFoundFailure) _then)
      : super(_value, (v) => _then(v as UserNotFoundFailure));

  @override
  UserNotFoundFailure get _value => super._value as UserNotFoundFailure;
}

/// @nodoc
class _$UserNotFoundFailure implements UserNotFoundFailure {
  const _$UserNotFoundFailure();

  @override
  String toString() {
    return 'UserDatabaseFailure.userNotFoundFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverErrorFailure(),
    @required TResult userNotFoundFailure(),
  }) {
    assert(serverErrorFailure != null);
    assert(userNotFoundFailure != null);
    return userNotFoundFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverErrorFailure(),
    TResult userNotFoundFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFoundFailure != null) {
      return userNotFoundFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverErrorFailure(ServerErrorFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  }) {
    assert(serverErrorFailure != null);
    assert(userNotFoundFailure != null);
    return userNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverErrorFailure(ServerErrorFailure value),
    TResult userNotFoundFailure(UserNotFoundFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFoundFailure != null) {
      return userNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class UserNotFoundFailure implements UserDatabaseFailure {
  const factory UserNotFoundFailure() = _$UserNotFoundFailure;
}
