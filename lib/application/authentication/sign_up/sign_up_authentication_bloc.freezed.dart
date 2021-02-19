// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpAuthenticationEventTearOff {
  const _$SignUpAuthenticationEventTearOff();

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
  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpAuthenticationEvent = _$SignUpAuthenticationEventTearOff();

/// @nodoc
mixin _$SignUpAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpAuthenticationEventCopyWith<$Res> {
  factory $SignUpAuthenticationEventCopyWith(SignUpAuthenticationEvent value,
          $Res Function(SignUpAuthenticationEvent) then) =
      _$SignUpAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpAuthenticationEventCopyWithImpl<$Res>
    implements $SignUpAuthenticationEventCopyWith<$Res> {
  _$SignUpAuthenticationEventCopyWithImpl(this._value, this._then);

  final SignUpAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpAuthenticationEvent) _then;
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
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr, passwordStr: $passwordStr)';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return confirmPasswordChanged(confirmPasswordStr, passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpAuthenticationEvent {
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
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.emailChanged(emailStr: $emailStr)';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpAuthenticationEvent {
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
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.passwordChanged(passwordStr: $passwordStr)';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpAuthenticationEvent {
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
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.resendVerificationEmail()';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return resendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return resendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmail != null) {
      return resendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class ResendVerificationEmail implements SignUpAuthenticationEvent {
  const factory ResendVerificationEmail() = _$ResendVerificationEmail;
}

/// @nodoc
abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressedCopyWithImpl<$Res>
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.signUpPressed()';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignUpAuthenticationEvent {
  const factory SignUpPressed() = _$SignUpPressed;
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
    extends _$SignUpAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignUpAuthenticationEvent.usernameChanged(usernameStr: $usernameStr)';
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
    @required
        TResult confirmPasswordChanged(
            String confirmPasswordStr, String passwordStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult resendVerificationEmail(),
    @required TResult signUpPressed(),
    @required TResult usernameChanged(String usernameStr),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChanged(
        String confirmPasswordStr, String passwordStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult resendVerificationEmail(),
    TResult signUpPressed(),
    TResult usernameChanged(String usernameStr),
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
    @required TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult resendVerificationEmail(ResendVerificationEmail value),
    @required TResult signUpPressed(SignUpPressed value),
    @required TResult usernameChanged(UsernameChanged value),
  }) {
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(resendVerificationEmail != null);
    assert(signUpPressed != null);
    assert(usernameChanged != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChanged(ConfirmPasswordChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult resendVerificationEmail(ResendVerificationEmail value),
    TResult signUpPressed(SignUpPressed value),
    TResult usernameChanged(UsernameChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpAuthenticationEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
class _$SignUpAuthenticationStateTearOff {
  const _$SignUpAuthenticationStateTearOff();

// ignore: unused_element
  _SignUpAuthenticationState call(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          Username username}) {
    return _SignUpAuthenticationState(
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      emailAddress: emailAddress,
      authenticationOption: authenticationOption,
      confirmPassword: confirmPassword,
      password: password,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpAuthenticationState = _$SignUpAuthenticationStateTearOff();

/// @nodoc
mixin _$SignUpAuthenticationState {
  bool get isSubmitting;
  bool get showErrorMessages;
  EmailAddress get emailAddress;
  Option<Either<AuthenticationFailure, dynamic>> get authenticationOption;
  Password get confirmPassword;
  Password get password;
  Username get username;

  @JsonKey(ignore: true)
  $SignUpAuthenticationStateCopyWith<SignUpAuthenticationState> get copyWith;
}

/// @nodoc
abstract class $SignUpAuthenticationStateCopyWith<$Res> {
  factory $SignUpAuthenticationStateCopyWith(SignUpAuthenticationState value,
          $Res Function(SignUpAuthenticationState) then) =
      _$SignUpAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      Password confirmPassword,
      Password password,
      Username username});
}

/// @nodoc
class _$SignUpAuthenticationStateCopyWithImpl<$Res>
    implements $SignUpAuthenticationStateCopyWith<$Res> {
  _$SignUpAuthenticationStateCopyWithImpl(this._value, this._then);

  final SignUpAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SignUpAuthenticationState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object confirmPassword = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
abstract class _$SignUpAuthenticationStateCopyWith<$Res>
    implements $SignUpAuthenticationStateCopyWith<$Res> {
  factory _$SignUpAuthenticationStateCopyWith(_SignUpAuthenticationState value,
          $Res Function(_SignUpAuthenticationState) then) =
      __$SignUpAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      Password confirmPassword,
      Password password,
      Username username});
}

/// @nodoc
class __$SignUpAuthenticationStateCopyWithImpl<$Res>
    extends _$SignUpAuthenticationStateCopyWithImpl<$Res>
    implements _$SignUpAuthenticationStateCopyWith<$Res> {
  __$SignUpAuthenticationStateCopyWithImpl(_SignUpAuthenticationState _value,
      $Res Function(_SignUpAuthenticationState) _then)
      : super(_value, (v) => _then(v as _SignUpAuthenticationState));

  @override
  _SignUpAuthenticationState get _value =>
      super._value as _SignUpAuthenticationState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object confirmPassword = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_SignUpAuthenticationState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
class _$_SignUpAuthenticationState implements _SignUpAuthenticationState {
  const _$_SignUpAuthenticationState(
      {@required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.emailAddress,
      @required this.authenticationOption,
      @required this.confirmPassword,
      @required this.password,
      @required this.username})
      : assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(emailAddress != null),
        assert(authenticationOption != null),
        assert(confirmPassword != null),
        assert(password != null),
        assert(username != null);

  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthenticationFailure, dynamic>> authenticationOption;
  @override
  final Password confirmPassword;
  @override
  final Password password;
  @override
  final Username username;

  @override
  String toString() {
    return 'SignUpAuthenticationState(isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, emailAddress: $emailAddress, authenticationOption: $authenticationOption, confirmPassword: $confirmPassword, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpAuthenticationState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.authenticationOption, authenticationOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationOption, authenticationOption)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(authenticationOption) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$SignUpAuthenticationStateCopyWith<_SignUpAuthenticationState>
      get copyWith =>
          __$SignUpAuthenticationStateCopyWithImpl<_SignUpAuthenticationState>(
              this, _$identity);
}

abstract class _SignUpAuthenticationState implements SignUpAuthenticationState {
  const factory _SignUpAuthenticationState(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          Username username}) = _$_SignUpAuthenticationState;

  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, dynamic>> get authenticationOption;
  @override
  Password get confirmPassword;
  @override
  Password get password;
  @override
  Username get username;
  @override
  @JsonKey(ignore: true)
  _$SignUpAuthenticationStateCopyWith<_SignUpAuthenticationState> get copyWith;
}
