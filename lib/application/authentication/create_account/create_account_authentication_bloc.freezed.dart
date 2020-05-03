// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_account_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateAccountAuthenticationEventTearOff {
  const _$CreateAccountAuthenticationEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  ConfirmPasswordChanged confirmPasswordChanged(String confirmPasswordStr) {
    return ConfirmPasswordChanged(
      confirmPasswordStr,
    );
  }

  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

  CreateAccount createAccount() {
    return const CreateAccount();
  }

  ResendVerificationEmail resendVerificationEmail() {
    return const ResendVerificationEmail();
  }
}

// ignore: unused_element
const $CreateAccountAuthenticationEvent =
    _$CreateAccountAuthenticationEventTearOff();

mixin _$CreateAccountAuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  });
}

abstract class $CreateAccountAuthenticationEventCopyWith<$Res> {
  factory $CreateAccountAuthenticationEventCopyWith(
          CreateAccountAuthenticationEvent value,
          $Res Function(CreateAccountAuthenticationEvent) then) =
      _$CreateAccountAuthenticationEventCopyWithImpl<$Res>;
}

class _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $CreateAccountAuthenticationEventCopyWith<$Res> {
  _$CreateAccountAuthenticationEventCopyWithImpl(this._value, this._then);

  final CreateAccountAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(CreateAccountAuthenticationEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
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

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.emailChanged(emailStr: $emailStr)';
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

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements CreateAccountAuthenticationEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
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

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.passwordChanged(passwordStr: $passwordStr)';
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

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements CreateAccountAuthenticationEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPasswordStr});
}

class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object confirmPasswordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr as String,
    ));
  }
}

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr)
      : assert(confirmPasswordStr != null);

  @override
  final String confirmPasswordStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPasswordStr, confirmPasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPasswordStr);

  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged
    implements CreateAccountAuthenticationEvent {
  const factory ConfirmPasswordChanged(String confirmPasswordStr) =
      _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class _$UsernameChangedCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
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

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.usernameChanged(usernameStr: $usernameStr)';
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

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements CreateAccountAuthenticationEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

abstract class $CreateAccountCopyWith<$Res> {
  factory $CreateAccountCopyWith(
          CreateAccount value, $Res Function(CreateAccount) then) =
      _$CreateAccountCopyWithImpl<$Res>;
}

class _$CreateAccountCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $CreateAccountCopyWith<$Res> {
  _$CreateAccountCopyWithImpl(
      CreateAccount _value, $Res Function(CreateAccount) _then)
      : super(_value, (v) => _then(v as CreateAccount));

  @override
  CreateAccount get _value => super._value as CreateAccount;
}

class _$CreateAccount implements CreateAccount {
  const _$CreateAccount();

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.createAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return createAccount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createAccount != null) {
      return createAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class CreateAccount implements CreateAccountAuthenticationEvent {
  const factory CreateAccount() = _$CreateAccount;
}

abstract class $ResendVerificationEmailCopyWith<$Res> {
  factory $ResendVerificationEmailCopyWith(ResendVerificationEmail value,
          $Res Function(ResendVerificationEmail) then) =
      _$ResendVerificationEmailCopyWithImpl<$Res>;
}

class _$ResendVerificationEmailCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $ResendVerificationEmailCopyWith<$Res> {
  _$ResendVerificationEmailCopyWithImpl(ResendVerificationEmail _value,
      $Res Function(ResendVerificationEmail) _then)
      : super(_value, (v) => _then(v as ResendVerificationEmail));

  @override
  ResendVerificationEmail get _value => super._value as ResendVerificationEmail;
}

class _$ResendVerificationEmail implements ResendVerificationEmail {
  const _$ResendVerificationEmail();

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.resendVerificationEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendVerificationEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result usernameChanged(String usernameStr),
    @required Result createAccount(),
    @required Result resendVerificationEmail(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return resendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result usernameChanged(String usernameStr),
    Result createAccount(),
    Result resendVerificationEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmail != null) {
      return resendVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result createAccount(CreateAccount value),
    @required Result resendVerificationEmail(ResendVerificationEmail value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(usernameChanged != null);
    assert(createAccount != null);
    assert(resendVerificationEmail != null);
    return resendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result usernameChanged(UsernameChanged value),
    Result createAccount(CreateAccount value),
    Result resendVerificationEmail(ResendVerificationEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmail != null) {
      return resendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class ResendVerificationEmail
    implements CreateAccountAuthenticationEvent {
  const factory ResendVerificationEmail() = _$ResendVerificationEmail;
}

class _$CreateAccountAuthenticationStateTearOff {
  const _$CreateAccountAuthenticationStateTearOff();

  _CreateAccountAuthenticationState call(
      {@required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          Password confirmPassword,
      @required
          Username username,
      @required
          bool showEmailErrorMessage,
      @required
          bool showPasswordErrorMessage,
      @required
          bool showConfirmPasswordErrorMessage,
      @required
          bool showUsernameErrorMessage,
      @required
          bool isSubmitting,
      @required
          bool isVerificationEmailSent,
      @required
          Option<Either<AuthenticationFailure, dynamic>>
              authenticationFailureOrSuccessOption}) {
    return _CreateAccountAuthenticationState(
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
      username: username,
      showEmailErrorMessage: showEmailErrorMessage,
      showPasswordErrorMessage: showPasswordErrorMessage,
      showConfirmPasswordErrorMessage: showConfirmPasswordErrorMessage,
      showUsernameErrorMessage: showUsernameErrorMessage,
      isSubmitting: isSubmitting,
      isVerificationEmailSent: isVerificationEmailSent,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CreateAccountAuthenticationState =
    _$CreateAccountAuthenticationStateTearOff();

mixin _$CreateAccountAuthenticationState {
  EmailAddress get emailAddress;
  Password get password;
  Password get confirmPassword;
  Username get username;
  bool get showEmailErrorMessage;
  bool get showPasswordErrorMessage;
  bool get showConfirmPasswordErrorMessage;
  bool get showUsernameErrorMessage;
  bool get isSubmitting;
  bool get isVerificationEmailSent;
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;

  $CreateAccountAuthenticationStateCopyWith<CreateAccountAuthenticationState>
      get copyWith;
}

abstract class $CreateAccountAuthenticationStateCopyWith<$Res> {
  factory $CreateAccountAuthenticationStateCopyWith(
          CreateAccountAuthenticationState value,
          $Res Function(CreateAccountAuthenticationState) then) =
      _$CreateAccountAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      Username username,
      bool showEmailErrorMessage,
      bool showPasswordErrorMessage,
      bool showConfirmPasswordErrorMessage,
      bool showUsernameErrorMessage,
      bool isSubmitting,
      bool isVerificationEmailSent,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class _$CreateAccountAuthenticationStateCopyWithImpl<$Res>
    implements $CreateAccountAuthenticationStateCopyWith<$Res> {
  _$CreateAccountAuthenticationStateCopyWithImpl(this._value, this._then);

  final CreateAccountAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(CreateAccountAuthenticationState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object username = freezed,
    Object showEmailErrorMessage = freezed,
    Object showPasswordErrorMessage = freezed,
    Object showConfirmPasswordErrorMessage = freezed,
    Object showUsernameErrorMessage = freezed,
    Object isSubmitting = freezed,
    Object isVerificationEmailSent = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      username: username == freezed ? _value.username : username as Username,
      showEmailErrorMessage: showEmailErrorMessage == freezed
          ? _value.showEmailErrorMessage
          : showEmailErrorMessage as bool,
      showPasswordErrorMessage: showPasswordErrorMessage == freezed
          ? _value.showPasswordErrorMessage
          : showPasswordErrorMessage as bool,
      showConfirmPasswordErrorMessage:
          showConfirmPasswordErrorMessage == freezed
              ? _value.showConfirmPasswordErrorMessage
              : showConfirmPasswordErrorMessage as bool,
      showUsernameErrorMessage: showUsernameErrorMessage == freezed
          ? _value.showUsernameErrorMessage
          : showUsernameErrorMessage as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isVerificationEmailSent: isVerificationEmailSent == freezed
          ? _value.isVerificationEmailSent
          : isVerificationEmailSent as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

abstract class _$CreateAccountAuthenticationStateCopyWith<$Res>
    implements $CreateAccountAuthenticationStateCopyWith<$Res> {
  factory _$CreateAccountAuthenticationStateCopyWith(
          _CreateAccountAuthenticationState value,
          $Res Function(_CreateAccountAuthenticationState) then) =
      __$CreateAccountAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      Username username,
      bool showEmailErrorMessage,
      bool showPasswordErrorMessage,
      bool showConfirmPasswordErrorMessage,
      bool showUsernameErrorMessage,
      bool isSubmitting,
      bool isVerificationEmailSent,
      Option<Either<AuthenticationFailure, dynamic>>
          authenticationFailureOrSuccessOption});
}

class __$CreateAccountAuthenticationStateCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationStateCopyWithImpl<$Res>
    implements _$CreateAccountAuthenticationStateCopyWith<$Res> {
  __$CreateAccountAuthenticationStateCopyWithImpl(
      _CreateAccountAuthenticationState _value,
      $Res Function(_CreateAccountAuthenticationState) _then)
      : super(_value, (v) => _then(v as _CreateAccountAuthenticationState));

  @override
  _CreateAccountAuthenticationState get _value =>
      super._value as _CreateAccountAuthenticationState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object username = freezed,
    Object showEmailErrorMessage = freezed,
    Object showPasswordErrorMessage = freezed,
    Object showConfirmPasswordErrorMessage = freezed,
    Object showUsernameErrorMessage = freezed,
    Object isSubmitting = freezed,
    Object isVerificationEmailSent = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateAccountAuthenticationState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      username: username == freezed ? _value.username : username as Username,
      showEmailErrorMessage: showEmailErrorMessage == freezed
          ? _value.showEmailErrorMessage
          : showEmailErrorMessage as bool,
      showPasswordErrorMessage: showPasswordErrorMessage == freezed
          ? _value.showPasswordErrorMessage
          : showPasswordErrorMessage as bool,
      showConfirmPasswordErrorMessage:
          showConfirmPasswordErrorMessage == freezed
              ? _value.showConfirmPasswordErrorMessage
              : showConfirmPasswordErrorMessage as bool,
      showUsernameErrorMessage: showUsernameErrorMessage == freezed
          ? _value.showUsernameErrorMessage
          : showUsernameErrorMessage as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isVerificationEmailSent: isVerificationEmailSent == freezed
          ? _value.isVerificationEmailSent
          : isVerificationEmailSent as bool,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption
                  as Option<Either<AuthenticationFailure, dynamic>>,
    ));
  }
}

class _$_CreateAccountAuthenticationState
    implements _CreateAccountAuthenticationState {
  const _$_CreateAccountAuthenticationState(
      {@required this.emailAddress,
      @required this.password,
      @required this.confirmPassword,
      @required this.username,
      @required this.showEmailErrorMessage,
      @required this.showPasswordErrorMessage,
      @required this.showConfirmPasswordErrorMessage,
      @required this.showUsernameErrorMessage,
      @required this.isSubmitting,
      @required this.isVerificationEmailSent,
      @required this.authenticationFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(username != null),
        assert(showEmailErrorMessage != null),
        assert(showPasswordErrorMessage != null),
        assert(showConfirmPasswordErrorMessage != null),
        assert(showUsernameErrorMessage != null),
        assert(isSubmitting != null),
        assert(isVerificationEmailSent != null),
        assert(authenticationFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final Username username;
  @override
  final bool showEmailErrorMessage;
  @override
  final bool showPasswordErrorMessage;
  @override
  final bool showConfirmPasswordErrorMessage;
  @override
  final bool showUsernameErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final bool isVerificationEmailSent;
  @override
  final Option<Either<AuthenticationFailure, dynamic>>
      authenticationFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateAccountAuthenticationState(emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, username: $username, showEmailErrorMessage: $showEmailErrorMessage, showPasswordErrorMessage: $showPasswordErrorMessage, showConfirmPasswordErrorMessage: $showConfirmPasswordErrorMessage, showUsernameErrorMessage: $showUsernameErrorMessage, isSubmitting: $isSubmitting, isVerificationEmailSent: $isVerificationEmailSent, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAccountAuthenticationState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.showEmailErrorMessage, showEmailErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showEmailErrorMessage, showEmailErrorMessage)) &&
            (identical(other.showPasswordErrorMessage, showPasswordErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showPasswordErrorMessage,
                    showPasswordErrorMessage)) &&
            (identical(other.showConfirmPasswordErrorMessage, showConfirmPasswordErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showConfirmPasswordErrorMessage,
                    showConfirmPasswordErrorMessage)) &&
            (identical(other.showUsernameErrorMessage, showUsernameErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showUsernameErrorMessage,
                    showUsernameErrorMessage)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isVerificationEmailSent, isVerificationEmailSent) ||
                const DeepCollectionEquality().equals(
                    other.isVerificationEmailSent, isVerificationEmailSent)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(showEmailErrorMessage) ^
      const DeepCollectionEquality().hash(showPasswordErrorMessage) ^
      const DeepCollectionEquality().hash(showConfirmPasswordErrorMessage) ^
      const DeepCollectionEquality().hash(showUsernameErrorMessage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isVerificationEmailSent) ^
      const DeepCollectionEquality().hash(authenticationFailureOrSuccessOption);

  @override
  _$CreateAccountAuthenticationStateCopyWith<_CreateAccountAuthenticationState>
      get copyWith => __$CreateAccountAuthenticationStateCopyWithImpl<
          _CreateAccountAuthenticationState>(this, _$identity);
}

abstract class _CreateAccountAuthenticationState
    implements CreateAccountAuthenticationState {
  const factory _CreateAccountAuthenticationState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              Password confirmPassword,
          @required
              Username username,
          @required
              bool showEmailErrorMessage,
          @required
              bool showPasswordErrorMessage,
          @required
              bool showConfirmPasswordErrorMessage,
          @required
              bool showUsernameErrorMessage,
          @required
              bool isSubmitting,
          @required
              bool isVerificationEmailSent,
          @required
              Option<Either<AuthenticationFailure, dynamic>>
                  authenticationFailureOrSuccessOption}) =
      _$_CreateAccountAuthenticationState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  Username get username;
  @override
  bool get showEmailErrorMessage;
  @override
  bool get showPasswordErrorMessage;
  @override
  bool get showConfirmPasswordErrorMessage;
  @override
  bool get showUsernameErrorMessage;
  @override
  bool get isSubmitting;
  @override
  bool get isVerificationEmailSent;
  @override
  Option<Either<AuthenticationFailure, dynamic>>
      get authenticationFailureOrSuccessOption;
  @override
  _$CreateAccountAuthenticationStateCopyWith<_CreateAccountAuthenticationState>
      get copyWith;
}
