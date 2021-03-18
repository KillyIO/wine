// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserFailureTearOff {
  const _$UserFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  Unexpected unexpected() {
    return const Unexpected();
  }

// ignore: unused_element
  UsernameAlreadyInUse usernameAlreadyInUse() {
    return const UsernameAlreadyInUse();
  }

// ignore: unused_element
  UserNotFound userNotFound() {
    return const UserNotFound();
  }
}

/// @nodoc
// ignore: unused_element
const $UserFailure = _$UserFailureTearOff();

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult unexpected(),
    @required TResult usernameAlreadyInUse(),
    @required TResult userNotFound(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult unexpected(),
    TResult usernameAlreadyInUse(),
    TResult userNotFound(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult unexpected(Unexpected value),
    @required TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required TResult userNotFound(UserNotFound value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult unexpected(Unexpected value),
    TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'UserFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult unexpected(),
    @required TResult usernameAlreadyInUse(),
    @required TResult userNotFound(),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult unexpected(),
    TResult usernameAlreadyInUse(),
    TResult userNotFound(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult unexpected(Unexpected value),
    @required TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult unexpected(Unexpected value),
    TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements UserFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'UserFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult unexpected(),
    @required TResult usernameAlreadyInUse(),
    @required TResult userNotFound(),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult unexpected(),
    TResult usernameAlreadyInUse(),
    TResult userNotFound(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult unexpected(Unexpected value),
    @required TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult unexpected(Unexpected value),
    TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements UserFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $UsernameAlreadyInUseCopyWith<$Res> {
  factory $UsernameAlreadyInUseCopyWith(UsernameAlreadyInUse value,
          $Res Function(UsernameAlreadyInUse) then) =
      _$UsernameAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameAlreadyInUseCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $UsernameAlreadyInUseCopyWith<$Res> {
  _$UsernameAlreadyInUseCopyWithImpl(
      UsernameAlreadyInUse _value, $Res Function(UsernameAlreadyInUse) _then)
      : super(_value, (v) => _then(v as UsernameAlreadyInUse));

  @override
  UsernameAlreadyInUse get _value => super._value as UsernameAlreadyInUse;
}

/// @nodoc
class _$UsernameAlreadyInUse implements UsernameAlreadyInUse {
  const _$UsernameAlreadyInUse();

  @override
  String toString() {
    return 'UserFailure.usernameAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult unexpected(),
    @required TResult usernameAlreadyInUse(),
    @required TResult userNotFound(),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return usernameAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult unexpected(),
    TResult usernameAlreadyInUse(),
    TResult userNotFound(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult unexpected(Unexpected value),
    @required TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return usernameAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult unexpected(Unexpected value),
    TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyInUse implements UserFailure {
  const factory UsernameAlreadyInUse() = _$UsernameAlreadyInUse;
}

/// @nodoc
abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

/// @nodoc
class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'UserFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult unexpected(),
    @required TResult usernameAlreadyInUse(),
    @required TResult userNotFound(),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult unexpected(),
    TResult usernameAlreadyInUse(),
    TResult userNotFound(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult unexpected(Unexpected value),
    @required TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(unexpected != null);
    assert(usernameAlreadyInUse != null);
    assert(userNotFound != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult unexpected(Unexpected value),
    TResult usernameAlreadyInUse(UsernameAlreadyInUse value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements UserFailure {
  const factory UserNotFound() = _$UserNotFound;
}
