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
  ServerFailure serverFailure() {
    return const ServerFailure();
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
    @required TResult serverFailure(),
    @required TResult userNotFoundFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(),
    TResult userNotFoundFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
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
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    extends _$UserDatabaseFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc
class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'UserDatabaseFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(),
    @required TResult userNotFoundFailure(),
  }) {
    assert(serverFailure != null);
    assert(userNotFoundFailure != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(),
    TResult userNotFoundFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  }) {
    assert(serverFailure != null);
    assert(userNotFoundFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult userNotFoundFailure(UserNotFoundFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements UserDatabaseFailure {
  const factory ServerFailure() = _$ServerFailure;
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
    @required TResult serverFailure(),
    @required TResult userNotFoundFailure(),
  }) {
    assert(serverFailure != null);
    assert(userNotFoundFailure != null);
    return userNotFoundFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(),
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
    @required TResult serverFailure(ServerFailure value),
    @required TResult userNotFoundFailure(UserNotFoundFailure value),
  }) {
    assert(serverFailure != null);
    assert(userNotFoundFailure != null);
    return userNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
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
