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
  UserAuthenticated userAuthenticated(User user) {
    return UserAuthenticated(
      user,
    );
  }

// ignore: unused_element
  UsernameAvailable usernameAvailable() {
    return const UsernameAvailable();
  }

// ignore: unused_element
  UserSignedInAnonymously userSignedInAnonymously() {
    return const UserSignedInAnonymously();
  }

// ignore: unused_element
  UserSignedOut userSignedOut() {
    return const UserSignedOut();
  }

// ignore: unused_element
  VerificationEmailSent verificationEmailSent() {
    return const VerificationEmailSent();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationSuccess = _$AuthenticationSuccessTearOff();

/// @nodoc
mixin _$AuthenticationSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
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
abstract class $UserAuthenticatedCopyWith<$Res> {
  factory $UserAuthenticatedCopyWith(
          UserAuthenticated value, $Res Function(UserAuthenticated) then) =
      _$UserAuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserAuthenticatedCopyWith<$Res> {
  _$UserAuthenticatedCopyWithImpl(
      UserAuthenticated _value, $Res Function(UserAuthenticated) _then)
      : super(_value, (v) => _then(v as UserAuthenticated));

  @override
  UserAuthenticated get _value => super._value as UserAuthenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserAuthenticated(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserAuthenticated implements UserAuthenticated {
  const _$UserAuthenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationSuccess.userAuthenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith =>
      _$UserAuthenticatedCopyWithImpl<UserAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticated != null) {
      return userAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticated implements AuthenticationSuccess {
  const factory UserAuthenticated(User user) = _$UserAuthenticated;

  User get user;
  @JsonKey(ignore: true)
  $UserAuthenticatedCopyWith<UserAuthenticated> get copyWith;
}

/// @nodoc
abstract class $UsernameAvailableCopyWith<$Res> {
  factory $UsernameAvailableCopyWith(
          UsernameAvailable value, $Res Function(UsernameAvailable) then) =
      _$UsernameAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameAvailableCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UsernameAvailableCopyWith<$Res> {
  _$UsernameAvailableCopyWithImpl(
      UsernameAvailable _value, $Res Function(UsernameAvailable) _then)
      : super(_value, (v) => _then(v as UsernameAvailable));

  @override
  UsernameAvailable get _value => super._value as UsernameAvailable;
}

/// @nodoc
class _$UsernameAvailable implements UsernameAvailable {
  const _$UsernameAvailable();

  @override
  String toString() {
    return 'AuthenticationSuccess.usernameAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return usernameAvailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailable != null) {
      return usernameAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return usernameAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailable != null) {
      return usernameAvailable(this);
    }
    return orElse();
  }
}

abstract class UsernameAvailable implements AuthenticationSuccess {
  const factory UsernameAvailable() = _$UsernameAvailable;
}

/// @nodoc
abstract class $UserSignedInAnonymouslyCopyWith<$Res> {
  factory $UserSignedInAnonymouslyCopyWith(UserSignedInAnonymously value,
          $Res Function(UserSignedInAnonymously) then) =
      _$UserSignedInAnonymouslyCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedInAnonymouslyCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedInAnonymouslyCopyWith<$Res> {
  _$UserSignedInAnonymouslyCopyWithImpl(UserSignedInAnonymously _value,
      $Res Function(UserSignedInAnonymously) _then)
      : super(_value, (v) => _then(v as UserSignedInAnonymously));

  @override
  UserSignedInAnonymously get _value => super._value as UserSignedInAnonymously;
}

/// @nodoc
class _$UserSignedInAnonymously implements UserSignedInAnonymously {
  const _$UserSignedInAnonymously();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedInAnonymously()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedInAnonymously);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userSignedInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymously != null) {
      return userSignedInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userSignedInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymously != null) {
      return userSignedInAnonymously(this);
    }
    return orElse();
  }
}

abstract class UserSignedInAnonymously implements AuthenticationSuccess {
  const factory UserSignedInAnonymously() = _$UserSignedInAnonymously;
}

/// @nodoc
abstract class $UserSignedOutCopyWith<$Res> {
  factory $UserSignedOutCopyWith(
          UserSignedOut value, $Res Function(UserSignedOut) then) =
      _$UserSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSignedOutCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedOutCopyWith<$Res> {
  _$UserSignedOutCopyWithImpl(
      UserSignedOut _value, $Res Function(UserSignedOut) _then)
      : super(_value, (v) => _then(v as UserSignedOut));

  @override
  UserSignedOut get _value => super._value as UserSignedOut;
}

/// @nodoc
class _$UserSignedOut implements UserSignedOut {
  const _$UserSignedOut();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOut != null) {
      return userSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return userSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOut != null) {
      return userSignedOut(this);
    }
    return orElse();
  }
}

abstract class UserSignedOut implements AuthenticationSuccess {
  const factory UserSignedOut() = _$UserSignedOut;
}

/// @nodoc
abstract class $VerificationEmailSentCopyWith<$Res> {
  factory $VerificationEmailSentCopyWith(VerificationEmailSent value,
          $Res Function(VerificationEmailSent) then) =
      _$VerificationEmailSentCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerificationEmailSentCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $VerificationEmailSentCopyWith<$Res> {
  _$VerificationEmailSentCopyWithImpl(
      VerificationEmailSent _value, $Res Function(VerificationEmailSent) _then)
      : super(_value, (v) => _then(v as VerificationEmailSent));

  @override
  VerificationEmailSent get _value => super._value as VerificationEmailSent;
}

/// @nodoc
class _$VerificationEmailSent implements VerificationEmailSent {
  const _$VerificationEmailSent();

  @override
  String toString() {
    return 'AuthenticationSuccess.verificationEmailSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerificationEmailSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userAuthenticated(User user),
    @required TResult usernameAvailable(),
    @required TResult userSignedInAnonymously(),
    @required TResult userSignedOut(),
    @required TResult verificationEmailSent(),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return verificationEmailSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userAuthenticated(User user),
    TResult usernameAvailable(),
    TResult userSignedInAnonymously(),
    TResult userSignedOut(),
    TResult verificationEmailSent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSent != null) {
      return verificationEmailSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userAuthenticated(UserAuthenticated value),
    @required TResult usernameAvailable(UsernameAvailable value),
    @required TResult userSignedInAnonymously(UserSignedInAnonymously value),
    @required TResult userSignedOut(UserSignedOut value),
    @required TResult verificationEmailSent(VerificationEmailSent value),
  }) {
    assert(userAuthenticated != null);
    assert(usernameAvailable != null);
    assert(userSignedInAnonymously != null);
    assert(userSignedOut != null);
    assert(verificationEmailSent != null);
    return verificationEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userAuthenticated(UserAuthenticated value),
    TResult usernameAvailable(UsernameAvailable value),
    TResult userSignedInAnonymously(UserSignedInAnonymously value),
    TResult userSignedOut(UserSignedOut value),
    TResult verificationEmailSent(VerificationEmailSent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSent != null) {
      return verificationEmailSent(this);
    }
    return orElse();
  }
}

abstract class VerificationEmailSent implements AuthenticationSuccess {
  const factory VerificationEmailSent() = _$VerificationEmailSent;
}
