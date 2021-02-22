// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  AccountCreated accountCreated(User user) {
    return AccountCreated(
      user,
    );
  }

// ignore: unused_element
  ConfirmPasswordChanged confirmPasswordChanged(
      String confirmPasswordStr, String passwordStr) {
    return ConfirmPasswordChanged(
      confirmPasswordStr,
      passwordStr,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  ResendVerificationEmail resendVerificationEmail() {
    return const ResendVerificationEmail();
  }

// ignore: unused_element
  SignUpPressed signUpPressed() {
    return const SignUpPressed();
  }

// ignore: unused_element
  UserDetailsSaved userDetailsSaved(User user) {
    return UserDetailsSaved(
      user,
    );
  }

// ignore: unused_element
  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  VerifyEmailLaunched verifyEmailLaunched() {
    return const VerifyEmailLaunched();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $AccountCreatedCopyWith<$Res> {
  factory $AccountCreatedCopyWith(
          AccountCreated value, $Res Function(AccountCreated) then) =
      _$AccountCreatedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AccountCreatedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $AccountCreatedCopyWith<$Res> {
  _$AccountCreatedCopyWithImpl(
      AccountCreated _value, $Res Function(AccountCreated) _then)
      : super(_value, (v) => _then(v as AccountCreated));

  @override
  AccountCreated get _value => super._value as AccountCreated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(AccountCreated(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$AccountCreated implements AccountCreated {
  const _$AccountCreated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SignUpEvent.accountCreated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountCreated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AccountCreatedCopyWith<AccountCreated> get copyWith =>
      _$AccountCreatedCopyWithImpl<AccountCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return accountCreated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountCreated != null) {
      return accountCreated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return accountCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountCreated != null) {
      return accountCreated(this);
    }
    return orElse();
  }
}

abstract class AccountCreated implements SignUpEvent {
  const factory AccountCreated(User user) = _$AccountCreated;

  User get user;
  @JsonKey(ignore: true)
  $AccountCreatedCopyWith<AccountCreated> get copyWith;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPasswordStr, String passwordStr});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object confirmPasswordStr = freezed,
    Object passwordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr as String,
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr, this.passwordStr)
      : assert(confirmPasswordStr != null),
        assert(passwordStr != null);

  @override
  final String confirmPasswordStr;
  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignUpEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr, passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPasswordStr, confirmPasswordStr)) &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPasswordStr) ^
      const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return confirmPasswordChanged(confirmPasswordStr, passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr, passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpEvent {
  const factory ConfirmPasswordChanged(
      String confirmPasswordStr, String passwordStr) = _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  String get passwordStr;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $ResendVerificationEmailCopyWith<$Res> {
  factory $ResendVerificationEmailCopyWith(ResendVerificationEmail value,
          $Res Function(ResendVerificationEmail) then) =
      _$ResendVerificationEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendVerificationEmailCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $ResendVerificationEmailCopyWith<$Res> {
  _$ResendVerificationEmailCopyWithImpl(ResendVerificationEmail _value,
      $Res Function(ResendVerificationEmail) _then)
      : super(_value, (v) => _then(v as ResendVerificationEmail));

  @override
  ResendVerificationEmail get _value => super._value as ResendVerificationEmail;
}

/// @nodoc
class _$ResendVerificationEmail implements ResendVerificationEmail {
  const _$ResendVerificationEmail();

  @override
  String toString() {
    return 'SignUpEvent.resendVerificationEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendVerificationEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return resendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmail != null) {
      return resendVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return resendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmail != null) {
      return resendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class ResendVerificationEmail implements SignUpEvent {
  const factory ResendVerificationEmail() = _$ResendVerificationEmail;
}

/// @nodoc
abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpPressedCopyWith<$Res> {
  _$SignUpPressedCopyWithImpl(
      SignUpPressed _value, $Res Function(SignUpPressed) _then)
      : super(_value, (v) => _then(v as SignUpPressed));

  @override
  SignUpPressed get _value => super._value as SignUpPressed;
}

/// @nodoc
class _$SignUpPressed implements SignUpPressed {
  const _$SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignUpEvent {
  const factory SignUpPressed() = _$SignUpPressed;
}

/// @nodoc
abstract class $UserDetailsSavedCopyWith<$Res> {
  factory $UserDetailsSavedCopyWith(
          UserDetailsSaved value, $Res Function(UserDetailsSaved) then) =
      _$UserDetailsSavedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserDetailsSavedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UserDetailsSavedCopyWith<$Res> {
  _$UserDetailsSavedCopyWithImpl(
      UserDetailsSaved _value, $Res Function(UserDetailsSaved) _then)
      : super(_value, (v) => _then(v as UserDetailsSaved));

  @override
  UserDetailsSaved get _value => super._value as UserDetailsSaved;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserDetailsSaved(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserDetailsSaved implements UserDetailsSaved {
  const _$UserDetailsSaved(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SignUpEvent.userDetailsSaved(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetailsSaved &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserDetailsSavedCopyWith<UserDetailsSaved> get copyWith =>
      _$UserDetailsSavedCopyWithImpl<UserDetailsSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return userDetailsSaved(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSaved != null) {
      return userDetailsSaved(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return userDetailsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSaved != null) {
      return userDetailsSaved(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSaved implements SignUpEvent {
  const factory UserDetailsSaved(User user) = _$UserDetailsSaved;

  User get user;
  @JsonKey(ignore: true)
  $UserDetailsSavedCopyWith<UserDetailsSaved> get copyWith;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'SignUpEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $VerifyEmailLaunchedCopyWith<$Res> {
  factory $VerifyEmailLaunchedCopyWith(
          VerifyEmailLaunched value, $Res Function(VerifyEmailLaunched) then) =
      _$VerifyEmailLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyEmailLaunchedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $VerifyEmailLaunchedCopyWith<$Res> {
  _$VerifyEmailLaunchedCopyWithImpl(
      VerifyEmailLaunched _value, $Res Function(VerifyEmailLaunched) _then)
      : super(_value, (v) => _then(v as VerifyEmailLaunched));

  @override
  VerifyEmailLaunched get _value => super._value as VerifyEmailLaunched;
}

/// @nodoc
class _$VerifyEmailLaunched implements VerifyEmailLaunched {
  const _$VerifyEmailLaunched();

  @override
  String toString() {
    return 'SignUpEvent.verifyEmailLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyEmailLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreated(User user),
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult userDetailsSaved(User user),
    @required TResult usernameChanged(String usernameStr),
    @required TResult verifyEmailLaunched(),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return verifyEmailLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreated(User user),
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult userDetailsSaved(User user),
    TResult usernameChanged(String usernameStr),
    TResult verifyEmailLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyEmailLaunched != null) {
      return verifyEmailLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreated(AccountCreated value),
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult verifyEmailLaunched(VerifyEmailLaunched value),
  }) {
    assert(accountCreated != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(userDetailsSaved != null);
    assert(usernameChanged != null);
    assert(verifyEmailLaunched != null);
    return verifyEmailLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreated(AccountCreated value),
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    TResult usernameChanged(UsernameChanged value),
    TResult verifyEmailLaunched(VerifyEmailLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyEmailLaunched != null) {
      return verifyEmailLaunched(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailLaunched implements SignUpEvent {
  const factory VerifyEmailLaunched() = _$VerifyEmailLaunched;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required
          bool isProcessing,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      @required
          Option<Either<SessionFailure, dynamic>> sessionOption,
      @required
          Option<Either<UserFailure, dynamic>> userOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          String emailAddressStr,
      @required
          Username username}) {
    return _SignUpState(
      isProcessing: isProcessing,
      showErrorMessages: showErrorMessages,
      emailAddress: emailAddress,
      authenticationOption: authenticationOption,
      sessionOption: sessionOption,
      userOption: userOption,
      confirmPassword: confirmPassword,
      password: password,
      emailAddressStr: emailAddressStr,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  bool get isProcessing;
  bool get showErrorMessages;
  EmailAddress get emailAddress;
  Option<Either<AuthenticationFailure, dynamic>> get authenticationOption;
  Option<Either<SessionFailure, dynamic>> get sessionOption;
  Option<Either<UserFailure, dynamic>> get userOption;
  Password get confirmPassword;
  Password get password;
  String get emailAddressStr;
  Username get username;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<UserFailure, dynamic>> userOption,
      Password confirmPassword,
      Password password,
      String emailAddressStr,
      Username username});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object isProcessing = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object sessionOption = freezed,
    Object userOption = freezed,
    Object confirmPassword = freezed,
    Object password = freezed,
    Object emailAddressStr = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authenticationOption: authenticationOption == freezed
          ? _value.authenticationOption
          : authenticationOption
              as Option<Either<AuthenticationFailure, dynamic>>,
      sessionOption: sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, dynamic>>,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      emailAddressStr: emailAddressStr == freezed
          ? _value.emailAddressStr
          : emailAddressStr as String,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProcessing,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<UserFailure, dynamic>> userOption,
      Password confirmPassword,
      Password password,
      String emailAddressStr,
      Username username});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object isProcessing = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object sessionOption = freezed,
    Object userOption = freezed,
    Object confirmPassword = freezed,
    Object password = freezed,
    Object emailAddressStr = freezed,
    Object username = freezed,
  }) {
    return _then(_SignUpState(
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authenticationOption: authenticationOption == freezed
          ? _value.authenticationOption
          : authenticationOption
              as Option<Either<AuthenticationFailure, dynamic>>,
      sessionOption: sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, dynamic>>,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      emailAddressStr: emailAddressStr == freezed
          ? _value.emailAddressStr
          : emailAddressStr as String,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {@required this.isProcessing,
      @required this.showErrorMessages,
      @required this.emailAddress,
      @required this.authenticationOption,
      @required this.sessionOption,
      @required this.userOption,
      @required this.confirmPassword,
      @required this.password,
      @required this.emailAddressStr,
      @required this.username})
      : assert(isProcessing != null),
        assert(showErrorMessages != null),
        assert(emailAddress != null),
        assert(authenticationOption != null),
        assert(sessionOption != null),
        assert(userOption != null),
        assert(confirmPassword != null),
        assert(password != null),
        assert(emailAddressStr != null),
        assert(username != null);

  @override
  final bool isProcessing;
  @override
  final bool showErrorMessages;
  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthenticationFailure, dynamic>> authenticationOption;
  @override
  final Option<Either<SessionFailure, dynamic>> sessionOption;
  @override
  final Option<Either<UserFailure, dynamic>> userOption;
  @override
  final Password confirmPassword;
  @override
  final Password password;
  @override
  final String emailAddressStr;
  @override
  final Username username;

  @override
  String toString() {
    return 'SignUpState(isProcessing: $isProcessing, showErrorMessages: $showErrorMessages, emailAddress: $emailAddress, authenticationOption: $authenticationOption, sessionOption: $sessionOption, userOption: $userOption, confirmPassword: $confirmPassword, password: $password, emailAddressStr: $emailAddressStr, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.authenticationOption, authenticationOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationOption, authenticationOption)) &&
            (identical(other.sessionOption, sessionOption) ||
                const DeepCollectionEquality()
                    .equals(other.sessionOption, sessionOption)) &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.emailAddressStr, emailAddressStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddressStr, emailAddressStr)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(authenticationOption) ^
      const DeepCollectionEquality().hash(sessionOption) ^
      const DeepCollectionEquality().hash(userOption) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(emailAddressStr) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {@required
          bool isProcessing,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      @required
          Option<Either<SessionFailure, dynamic>> sessionOption,
      @required
          Option<Either<UserFailure, dynamic>> userOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          String emailAddressStr,
      @required
          Username username}) = _$_SignUpState;

  @override
  bool get isProcessing;
  @override
  bool get showErrorMessages;
  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, dynamic>> get authenticationOption;
  @override
  Option<Either<SessionFailure, dynamic>> get sessionOption;
  @override
  Option<Either<UserFailure, dynamic>> get userOption;
  @override
  Password get confirmPassword;
  @override
  Password get password;
  @override
  String get emailAddressStr;
  @override
  Username get username;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
