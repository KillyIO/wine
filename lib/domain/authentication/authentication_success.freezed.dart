// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationSuccessTearOff {
  const _$AuthenticationSuccessTearOff();

// ignore: unused_element
  UserAuthenticatedSCS userAuthenticatedSCS(User user) {
    return UserAuthenticatedSCS(
      user,
    );
  }

// ignore: unused_element
  UsernameAvailableSCS usernameAvailableSCS() {
    return const UsernameAvailableSCS();
  }

// ignore: unused_element
  UserSignedInAnonymouslySCS userSignedInAnonymouslySCS() {
    return const UserSignedInAnonymouslySCS();
  }

// ignore: unused_element
  UserSignedOutSCS userSignedOutSCS() {
    return const UserSignedOutSCS();
  }

// ignore: unused_element
  VerificationEmailSentSCS verificationEmailSentSCS() {
    return const VerificationEmailSentSCS();
  }
}

// ignore: unused_element
const $AuthenticationSuccess = _$AuthenticationSuccessTearOff();

mixin _$AuthenticationSuccess {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationSuccessCopyWith<$Res> {
  factory $AuthenticationSuccessCopyWith(AuthenticationSuccess value,
          $Res Function(AuthenticationSuccess) then) =
      _$AuthenticationSuccessCopyWithImpl<$Res>;
}

class _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $AuthenticationSuccessCopyWith<$Res> {
  _$AuthenticationSuccessCopyWithImpl(this._value, this._then);

  final AuthenticationSuccess _value;
  // ignore: unused_field
  final $Res Function(AuthenticationSuccess) _then;
}

abstract class $UserAuthenticatedSCSCopyWith<$Res> {
  factory $UserAuthenticatedSCSCopyWith(UserAuthenticatedSCS value,
          $Res Function(UserAuthenticatedSCS) then) =
      _$UserAuthenticatedSCSCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$UserAuthenticatedSCSCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserAuthenticatedSCSCopyWith<$Res> {
  _$UserAuthenticatedSCSCopyWithImpl(
      UserAuthenticatedSCS _value, $Res Function(UserAuthenticatedSCS) _then)
      : super(_value, (v) => _then(v as UserAuthenticatedSCS));

  @override
  UserAuthenticatedSCS get _value => super._value as UserAuthenticatedSCS;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserAuthenticatedSCS(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$UserAuthenticatedSCS implements UserAuthenticatedSCS {
  const _$UserAuthenticatedSCS(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationSuccess.userAuthenticatedSCS(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticatedSCS &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserAuthenticatedSCSCopyWith<UserAuthenticatedSCS> get copyWith =>
      _$UserAuthenticatedSCSCopyWithImpl<UserAuthenticatedSCS>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userAuthenticatedSCS(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticatedSCS != null) {
      return userAuthenticatedSCS(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userAuthenticatedSCS(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userAuthenticatedSCS != null) {
      return userAuthenticatedSCS(this);
    }
    return orElse();
  }
}

abstract class UserAuthenticatedSCS implements AuthenticationSuccess {
  const factory UserAuthenticatedSCS(User user) = _$UserAuthenticatedSCS;

  User get user;
  $UserAuthenticatedSCSCopyWith<UserAuthenticatedSCS> get copyWith;
}

abstract class $UsernameAvailableSCSCopyWith<$Res> {
  factory $UsernameAvailableSCSCopyWith(UsernameAvailableSCS value,
          $Res Function(UsernameAvailableSCS) then) =
      _$UsernameAvailableSCSCopyWithImpl<$Res>;
}

class _$UsernameAvailableSCSCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UsernameAvailableSCSCopyWith<$Res> {
  _$UsernameAvailableSCSCopyWithImpl(
      UsernameAvailableSCS _value, $Res Function(UsernameAvailableSCS) _then)
      : super(_value, (v) => _then(v as UsernameAvailableSCS));

  @override
  UsernameAvailableSCS get _value => super._value as UsernameAvailableSCS;
}

class _$UsernameAvailableSCS implements UsernameAvailableSCS {
  const _$UsernameAvailableSCS();

  @override
  String toString() {
    return 'AuthenticationSuccess.usernameAvailableSCS()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAvailableSCS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return usernameAvailableSCS();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailableSCS != null) {
      return usernameAvailableSCS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return usernameAvailableSCS(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAvailableSCS != null) {
      return usernameAvailableSCS(this);
    }
    return orElse();
  }
}

abstract class UsernameAvailableSCS implements AuthenticationSuccess {
  const factory UsernameAvailableSCS() = _$UsernameAvailableSCS;
}

abstract class $UserSignedInAnonymouslySCSCopyWith<$Res> {
  factory $UserSignedInAnonymouslySCSCopyWith(UserSignedInAnonymouslySCS value,
          $Res Function(UserSignedInAnonymouslySCS) then) =
      _$UserSignedInAnonymouslySCSCopyWithImpl<$Res>;
}

class _$UserSignedInAnonymouslySCSCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedInAnonymouslySCSCopyWith<$Res> {
  _$UserSignedInAnonymouslySCSCopyWithImpl(UserSignedInAnonymouslySCS _value,
      $Res Function(UserSignedInAnonymouslySCS) _then)
      : super(_value, (v) => _then(v as UserSignedInAnonymouslySCS));

  @override
  UserSignedInAnonymouslySCS get _value =>
      super._value as UserSignedInAnonymouslySCS;
}

class _$UserSignedInAnonymouslySCS implements UserSignedInAnonymouslySCS {
  const _$UserSignedInAnonymouslySCS();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedInAnonymouslySCS()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedInAnonymouslySCS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userSignedInAnonymouslySCS();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymouslySCS != null) {
      return userSignedInAnonymouslySCS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userSignedInAnonymouslySCS(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedInAnonymouslySCS != null) {
      return userSignedInAnonymouslySCS(this);
    }
    return orElse();
  }
}

abstract class UserSignedInAnonymouslySCS implements AuthenticationSuccess {
  const factory UserSignedInAnonymouslySCS() = _$UserSignedInAnonymouslySCS;
}

abstract class $UserSignedOutSCSCopyWith<$Res> {
  factory $UserSignedOutSCSCopyWith(
          UserSignedOutSCS value, $Res Function(UserSignedOutSCS) then) =
      _$UserSignedOutSCSCopyWithImpl<$Res>;
}

class _$UserSignedOutSCSCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $UserSignedOutSCSCopyWith<$Res> {
  _$UserSignedOutSCSCopyWithImpl(
      UserSignedOutSCS _value, $Res Function(UserSignedOutSCS) _then)
      : super(_value, (v) => _then(v as UserSignedOutSCS));

  @override
  UserSignedOutSCS get _value => super._value as UserSignedOutSCS;
}

class _$UserSignedOutSCS implements UserSignedOutSCS {
  const _$UserSignedOutSCS();

  @override
  String toString() {
    return 'AuthenticationSuccess.userSignedOutSCS()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSignedOutSCS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userSignedOutSCS();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutSCS != null) {
      return userSignedOutSCS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return userSignedOutSCS(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userSignedOutSCS != null) {
      return userSignedOutSCS(this);
    }
    return orElse();
  }
}

abstract class UserSignedOutSCS implements AuthenticationSuccess {
  const factory UserSignedOutSCS() = _$UserSignedOutSCS;
}

abstract class $VerificationEmailSentSCSCopyWith<$Res> {
  factory $VerificationEmailSentSCSCopyWith(VerificationEmailSentSCS value,
          $Res Function(VerificationEmailSentSCS) then) =
      _$VerificationEmailSentSCSCopyWithImpl<$Res>;
}

class _$VerificationEmailSentSCSCopyWithImpl<$Res>
    extends _$AuthenticationSuccessCopyWithImpl<$Res>
    implements $VerificationEmailSentSCSCopyWith<$Res> {
  _$VerificationEmailSentSCSCopyWithImpl(VerificationEmailSentSCS _value,
      $Res Function(VerificationEmailSentSCS) _then)
      : super(_value, (v) => _then(v as VerificationEmailSentSCS));

  @override
  VerificationEmailSentSCS get _value =>
      super._value as VerificationEmailSentSCS;
}

class _$VerificationEmailSentSCS implements VerificationEmailSentSCS {
  const _$VerificationEmailSentSCS();

  @override
  String toString() {
    return 'AuthenticationSuccess.verificationEmailSentSCS()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerificationEmailSentSCS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userAuthenticatedSCS(User user),
    @required Result usernameAvailableSCS(),
    @required Result userSignedInAnonymouslySCS(),
    @required Result userSignedOutSCS(),
    @required Result verificationEmailSentSCS(),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return verificationEmailSentSCS();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userAuthenticatedSCS(User user),
    Result usernameAvailableSCS(),
    Result userSignedInAnonymouslySCS(),
    Result userSignedOutSCS(),
    Result verificationEmailSentSCS(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSentSCS != null) {
      return verificationEmailSentSCS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    @required Result usernameAvailableSCS(UsernameAvailableSCS value),
    @required
        Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    @required Result userSignedOutSCS(UserSignedOutSCS value),
    @required Result verificationEmailSentSCS(VerificationEmailSentSCS value),
  }) {
    assert(userAuthenticatedSCS != null);
    assert(usernameAvailableSCS != null);
    assert(userSignedInAnonymouslySCS != null);
    assert(userSignedOutSCS != null);
    assert(verificationEmailSentSCS != null);
    return verificationEmailSentSCS(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userAuthenticatedSCS(UserAuthenticatedSCS value),
    Result usernameAvailableSCS(UsernameAvailableSCS value),
    Result userSignedInAnonymouslySCS(UserSignedInAnonymouslySCS value),
    Result userSignedOutSCS(UserSignedOutSCS value),
    Result verificationEmailSentSCS(VerificationEmailSentSCS value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationEmailSentSCS != null) {
      return verificationEmailSentSCS(this);
    }
    return orElse();
  }
}

abstract class VerificationEmailSentSCS implements AuthenticationSuccess {
  const factory VerificationEmailSentSCS() = _$VerificationEmailSentSCS;
}