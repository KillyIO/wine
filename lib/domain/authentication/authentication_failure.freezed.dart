// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationFailureTearOff {
  const _$AuthenticationFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  UnableToSignOut unableToSignOut() {
    return const UnableToSignOut();
  }

// ignore: unused_element
  UsernameAlreadyInUse usernameAlreadyInUse() {
    return const UsernameAlreadyInUse();
  }
}

// ignore: unused_element
const $AuthenticationFailure = _$AuthenticationFailureTearOff();

mixin _$AuthenticationFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationFailureCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value,
          $Res Function(AuthenticationFailure) then) =
      _$AuthenticationFailureCopyWithImpl<$Res>;
}

class _$AuthenticationFailureCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._value, this._then);

  final AuthenticationFailure _value;
  // ignore: unused_field
  final $Res Function(AuthenticationFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthenticationFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthenticationFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthenticationFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthenticationFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthenticationFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination
    implements AuthenticationFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthenticationFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthenticationFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $UnableToSignOutCopyWith<$Res> {
  factory $UnableToSignOutCopyWith(
          UnableToSignOut value, $Res Function(UnableToSignOut) then) =
      _$UnableToSignOutCopyWithImpl<$Res>;
}

class _$UnableToSignOutCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $UnableToSignOutCopyWith<$Res> {
  _$UnableToSignOutCopyWithImpl(
      UnableToSignOut _value, $Res Function(UnableToSignOut) _then)
      : super(_value, (v) => _then(v as UnableToSignOut));

  @override
  UnableToSignOut get _value => super._value as UnableToSignOut;
}

class _$UnableToSignOut implements UnableToSignOut {
  const _$UnableToSignOut();

  @override
  String toString() {
    return 'AuthenticationFailure.unableToSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return unableToSignOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSignOut != null) {
      return unableToSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return unableToSignOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSignOut != null) {
      return unableToSignOut(this);
    }
    return orElse();
  }
}

abstract class UnableToSignOut implements AuthenticationFailure {
  const factory UnableToSignOut() = _$UnableToSignOut;
}

abstract class $UsernameAlreadyInUseCopyWith<$Res> {
  factory $UsernameAlreadyInUseCopyWith(UsernameAlreadyInUse value,
          $Res Function(UsernameAlreadyInUse) then) =
      _$UsernameAlreadyInUseCopyWithImpl<$Res>;
}

class _$UsernameAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $UsernameAlreadyInUseCopyWith<$Res> {
  _$UsernameAlreadyInUseCopyWithImpl(
      UsernameAlreadyInUse _value, $Res Function(UsernameAlreadyInUse) _then)
      : super(_value, (v) => _then(v as UsernameAlreadyInUse));

  @override
  UsernameAlreadyInUse get _value => super._value as UsernameAlreadyInUse;
}

class _$UsernameAlreadyInUse implements UsernameAlreadyInUse {
  const _$UsernameAlreadyInUse();

  @override
  String toString() {
    return 'AuthenticationFailure.usernameAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result serverError(),
    @required Result unableToSignOut(),
    @required Result usernameAlreadyInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return usernameAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result serverError(),
    Result unableToSignOut(),
    Result usernameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result serverError(ServerError value),
    @required Result unableToSignOut(UnableToSignOut value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(serverError != null);
    assert(unableToSignOut != null);
    assert(usernameAlreadyInUse != null);
    return usernameAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result serverError(ServerError value),
    Result unableToSignOut(UnableToSignOut value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyInUse implements AuthenticationFailure {
  const factory UsernameAlreadyInUse() = _$UsernameAlreadyInUse;
}
