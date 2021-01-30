// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationSuccessTearOff {
  const _$AuthenticationSuccessTearOff();

// ignore: unused_element
  UserAuthenticatedSuccess userAuthenticatedSuccess(User user) {
    return UserAuthenticatedSuccess(
      user,
    );
  }

// ignore: unused_element
  UsernameAvailableSuccess usernameAvailableSuccess() {
    return const UsernameAvailableSuccess();
  }

// ignore: unused_element
  UserSignedInAnonymouslySuccess userSignedInAnonymouslySuccess() {
    return const UserSignedInAnonymouslySuccess();
  }

// ignore: unused_element
  UserSignedOutSuccess userSignedOutSuccess() {
    return const UserSignedOutSuccess();
  }

// ignore: unused_element
  VerificationEmailSentSuccess verificationEmailSentSuccess() {
    return const VerificationEmailSentSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationSuccess = _$AuthenticationSuccessTearOff();

/// @nodoc
mixin _$AuthenticationSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationSuccessCopyWith<$Res> {
  factory $AuthenticationSuccessCopyWith(AuthenticationSuccess value,
          $Res Function(AuthenticationSuccess) then) =
      _$AuthenticationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $AuthenticationSuccessCopyWith<$Res> {
  _$AuthenticationSuccessCopyWithImpl(this._value, this._then);

  final AuthenticationSuccess _value;
  // ignore: unused_field
  final $Res Function(AuthenticationSuccess) _then;
}

/// @nodoc
abstract class $UserAuthenticatedSuccessCopyWith<$Res> {
  factory $UserAuthenticatedSuccessCopyWith(UserAuthenticatedSuccess value,
          $Res Function(UserAuthenticatedSuccess) then) =
      _$UserAuthenticatedSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserAuthenticatedSuccessCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserAuthenticatedSuccessCopyWith<$Res> {
  _$UserAuthenticatedSuccessCopyWithImpl(UserAuthenticatedSuccess _value,
      $Res Function(UserAuthenticatedSuccess) _then)
      : super(_value, (v) => _then(v as UserAuthenticatedSuccess));

  @override
  UserAuthenticatedSuccess get _value =>
      super._value as UserAuthenticatedSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserAuthenticatedSuccess(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserAuthenticatedSuccess implements UserAuthenticatedSuccess {
  const _$UserAuthenticatedSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationSuccess.userAuthenticatedSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticatedSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedSuccessCopyWith<UserAuthenticatedSuccess> get copyWith =>
      _$UserAuthenticatedSuccessCopyWithImpl<UserAuthenticatedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userAuthenticatedSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticatedSuccess != null) {
      return userAuthenticatedSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userAuthenticatedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticatedSuccess != null) {
      return userAuthenticatedSuccess(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticatedSuccess implements AuthenticationSuccess {
  const factory UserAuthenticatedSuccess(User user) =
      _$UserAuthenticatedSuccess;

  User get user;
  @JsonKey(ignore: true)
  $UserAuthenticatedSuccessCopyWith<UserAuthenticatedSuccess> get copyWith;
}

/// @nodoc
abstract class $UsernameAvailableSuccessCopyWith<$Res> {
  factory $UsernameAvailableSuccessCopyWith(UsernameAvailableSuccess value,
          $Res Function(UsernameAvailableSuccess) then) =
      _$UsernameAvailableSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameAvailableSuccessCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UsernameAvailableSuccessCopyWith<$Res> {
  _$UsernameAvailableSuccessCopyWithImpl(UsernameAvailableSuccess _value,
      $Res Function(UsernameAvailableSuccess) _then)
      : super(_value, (v) => _then(v as UsernameAvailableSuccess));

  @override
  UsernameAvailableSuccess get _value =>
      super._value as UsernameAvailableSuccess;
}

/// @nodoc
class _$UsernameAvailableSuccess implements UsernameAvailableSuccess {
  const _$UsernameAvailableSuccess();

  @override
  String toString() {
    return 'AuthenticationSuccess.usernameAvailableSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAvailableSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return usernameAvailableSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailableSuccess != null) {
      return usernameAvailableSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return usernameAvailableSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailableSuccess != null) {
      return usernameAvailableSuccess(this);
    }
    return orElse();
  }
}

abstract class UsernameAvailableSuccess implements AuthenticationSuccess {
  const factory UsernameAvailableSuccess() = _$UsernameAvailableSuccess;
}

/// @nodoc
abstract class $UserSignedInAnonymouslySuccessCopyWith<$Res> {
  factory $UserSignedInAnonymouslySuccessCopyWith(
          UserSignedInAnonymouslySuccess value,
          $Res Function(UserSignedInAnonymouslySuccess) then) =
      _$UserSignedInAnonymouslySuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedInAnonymouslySuccessCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedInAnonymouslySuccessCopyWith<$Res> {
  _$UserSignedInAnonymouslySuccessCopyWithImpl(
      UserSignedInAnonymouslySuccess _value,
      $Res Function(UserSignedInAnonymouslySuccess) _then)
      : super(_value, (v) => _then(v as UserSignedInAnonymouslySuccess));

  @override
  UserSignedInAnonymouslySuccess get _value =>
      super._value as UserSignedInAnonymouslySuccess;
}

/// @nodoc
class _$UserSignedInAnonymouslySuccess
    implements UserSignedInAnonymouslySuccess {
  const _$UserSignedInAnonymouslySuccess();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedInAnonymouslySuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedInAnonymouslySuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userSignedInAnonymouslySuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymouslySuccess != null) {
      return userSignedInAnonymouslySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userSignedInAnonymouslySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymouslySuccess != null) {
      return userSignedInAnonymouslySuccess(this);
    }
    return orElse();
  }
}

abstract class UserSignedInAnonymouslySuccess implements AuthenticationSuccess {
  const factory UserSignedInAnonymouslySuccess() =
      _$UserSignedInAnonymouslySuccess;
}

/// @nodoc
abstract class $UserSignedOutSuccessCopyWith<$Res> {
  factory $UserSignedOutSuccessCopyWith(UserSignedOutSuccess value,
          $Res Function(UserSignedOutSuccess) then) =
      _$UserSignedOutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedOutSuccessCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedOutSuccessCopyWith<$Res> {
  _$UserSignedOutSuccessCopyWithImpl(
      UserSignedOutSuccess _value, $Res Function(UserSignedOutSuccess) _then)
      : super(_value, (v) => _then(v as UserSignedOutSuccess));

  @override
  UserSignedOutSuccess get _value => super._value as UserSignedOutSuccess;
}

/// @nodoc
class _$UserSignedOutSuccess implements UserSignedOutSuccess {
  const _$UserSignedOutSuccess();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userSignedOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutSuccess != null) {
      return userSignedOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return userSignedOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutSuccess != null) {
      return userSignedOutSuccess(this);
    }
    return orElse();
  }
}

abstract class UserSignedOutSuccess implements AuthenticationSuccess {
  const factory UserSignedOutSuccess() = _$UserSignedOutSuccess;
}

/// @nodoc
abstract class $VerificationEmailSentSuccessCopyWith<$Res> {
  factory $VerificationEmailSentSuccessCopyWith(
          VerificationEmailSentSuccess value,
          $Res Function(VerificationEmailSentSuccess) then) =
      _$VerificationEmailSentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerificationEmailSentSuccessCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $VerificationEmailSentSuccessCopyWith<$Res> {
  _$VerificationEmailSentSuccessCopyWithImpl(
      VerificationEmailSentSuccess _value,
      $Res Function(VerificationEmailSentSuccess) _then)
      : super(_value, (v) => _then(v as VerificationEmailSentSuccess));

  @override
  VerificationEmailSentSuccess get _value =>
      super._value as VerificationEmailSentSuccess;
}

/// @nodoc
class _$VerificationEmailSentSuccess implements VerificationEmailSentSuccess {
  const _$VerificationEmailSentSuccess();

  @override
  String toString() {
    return 'AuthenticationSuccess.verificationEmailSentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerificationEmailSentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(User user),
    @required TResult usernameAvailableSuccess(),
    @required TResult userSignedInAnonymouslySuccess(),
    @required TResult userSignedOutSuccess(),
    @required TResult verificationEmailSentSuccess(),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return verificationEmailSentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticatedSuccess(User user),
    TResult usernameAvailableSuccess(),
    TResult userSignedInAnonymouslySuccess(),
    TResult userSignedOutSuccess(),
    TResult verificationEmailSentSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSentSuccess != null) {
      return verificationEmailSentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    @required TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    @required
        TResult userSignedInAnonymouslySuccess(
            UserSignedInAnonymouslySuccess value),
    @required TResult userSignedOutSuccess(UserSignedOutSuccess value),
    @required
        TResult verificationEmailSentSuccess(
            VerificationEmailSentSuccess value),
  }) {
    assert(userAuthenticatedSuccess != null);
    assert(usernameAvailableSuccess != null);
    assert(userSignedInAnonymouslySuccess != null);
    assert(userSignedOutSuccess != null);
    assert(verificationEmailSentSuccess != null);
    return verificationEmailSentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticatedSuccess(UserAuthenticatedSuccess value),
    TResult usernameAvailableSuccess(UsernameAvailableSuccess value),
    TResult userSignedInAnonymouslySuccess(
        UserSignedInAnonymouslySuccess value),
    TResult userSignedOutSuccess(UserSignedOutSuccess value),
    TResult verificationEmailSentSuccess(VerificationEmailSentSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSentSuccess != null) {
      return verificationEmailSentSuccess(this);
    }
    return orElse();
  }
}

abstract class VerificationEmailSentSuccess implements AuthenticationSuccess {
  const factory VerificationEmailSentSuccess() = _$VerificationEmailSentSuccess;
}
