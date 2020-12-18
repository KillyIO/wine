// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_account_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateAccountAuthenticationEventTearOff {
  const _$CreateAccountAuthenticationEventTearOff();

// ignore: unused_element
  ConfirmPasswordChangedEVT confirmPasswordChangedEVT(
      String confirmPasswordStr, String passwordStr) {
    return ConfirmPasswordChangedEVT(
      confirmPasswordStr,
      passwordStr,
    );
  }

// ignore: unused_element
  CreateAccountEVT createAccountEVT() {
    return const CreateAccountEVT();
  }

// ignore: unused_element
  EmailChangedEVT emailChangedEVT(String emailStr) {
    return EmailChangedEVT(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChangedEVT passwordChangedEVT(String passwordStr) {
    return PasswordChangedEVT(
      passwordStr,
    );
  }

// ignore: unused_element
  ResendVerificationEmailEVT resendVerificationEmailEVT() {
    return const ResendVerificationEmailEVT();
  }

// ignore: unused_element
  UsernameChangedEVT usernameChangedEVT(String usernameStr) {
    return UsernameChangedEVT(
      usernameStr,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateAccountAuthenticationEvent =
    _$CreateAccountAuthenticationEventTearOff();

/// @nodoc
mixin _$CreateAccountAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CreateAccountAuthenticationEventCopyWith<$Res> {
  factory $CreateAccountAuthenticationEventCopyWith(
          CreateAccountAuthenticationEvent value,
          $Res Function(CreateAccountAuthenticationEvent) then) =
      _$CreateAccountAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $CreateAccountAuthenticationEventCopyWith<$Res> {
  _$CreateAccountAuthenticationEventCopyWithImpl(this._value, this._then);

  final CreateAccountAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(CreateAccountAuthenticationEvent) _then;
}

/// @nodoc
abstract class $ConfirmPasswordChangedEVTCopyWith<$Res> {
  factory $ConfirmPasswordChangedEVTCopyWith(ConfirmPasswordChangedEVT value,
          $Res Function(ConfirmPasswordChangedEVT) then) =
      _$ConfirmPasswordChangedEVTCopyWithImpl<$Res>;
  $Res call({String confirmPasswordStr, String passwordStr});
}

/// @nodoc
class _$ConfirmPasswordChangedEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedEVTCopyWith<$Res> {
  _$ConfirmPasswordChangedEVTCopyWithImpl(ConfirmPasswordChangedEVT _value,
      $Res Function(ConfirmPasswordChangedEVT) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChangedEVT));

  @override
  ConfirmPasswordChangedEVT get _value =>
      super._value as ConfirmPasswordChangedEVT;

  @override
  $Res call({
    Object confirmPasswordStr = freezed,
    Object passwordStr = freezed,
  }) {
    return _then(ConfirmPasswordChangedEVT(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr as String,
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$ConfirmPasswordChangedEVT implements ConfirmPasswordChangedEVT {
  const _$ConfirmPasswordChangedEVT(this.confirmPasswordStr, this.passwordStr)
      : assert(confirmPasswordStr != null),
        assert(passwordStr != null);

  @override
  final String confirmPasswordStr;
  @override
  final String passwordStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.confirmPasswordChangedEVT(confirmPasswordStr: $confirmPasswordStr, passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChangedEVT &&
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

  @override
  $ConfirmPasswordChangedEVTCopyWith<ConfirmPasswordChangedEVT> get copyWith =>
      _$ConfirmPasswordChangedEVTCopyWithImpl<ConfirmPasswordChangedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return confirmPasswordChangedEVT(confirmPasswordStr, passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChangedEVT != null) {
      return confirmPasswordChangedEVT(confirmPasswordStr, passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return confirmPasswordChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChangedEVT != null) {
      return confirmPasswordChangedEVT(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChangedEVT
    implements CreateAccountAuthenticationEvent {
  const factory ConfirmPasswordChangedEVT(
          String confirmPasswordStr, String passwordStr) =
      _$ConfirmPasswordChangedEVT;

  String get confirmPasswordStr;
  String get passwordStr;
  $ConfirmPasswordChangedEVTCopyWith<ConfirmPasswordChangedEVT> get copyWith;
}

/// @nodoc
abstract class $CreateAccountEVTCopyWith<$Res> {
  factory $CreateAccountEVTCopyWith(
          CreateAccountEVT value, $Res Function(CreateAccountEVT) then) =
      _$CreateAccountEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateAccountEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $CreateAccountEVTCopyWith<$Res> {
  _$CreateAccountEVTCopyWithImpl(
      CreateAccountEVT _value, $Res Function(CreateAccountEVT) _then)
      : super(_value, (v) => _then(v as CreateAccountEVT));

  @override
  CreateAccountEVT get _value => super._value as CreateAccountEVT;
}

/// @nodoc
class _$CreateAccountEVT implements CreateAccountEVT {
  const _$CreateAccountEVT();

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.createAccountEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateAccountEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return createAccountEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountEVT != null) {
      return createAccountEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return createAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountEVT != null) {
      return createAccountEVT(this);
    }
    return orElse();
  }
}

abstract class CreateAccountEVT implements CreateAccountAuthenticationEvent {
  const factory CreateAccountEVT() = _$CreateAccountEVT;
}

/// @nodoc
abstract class $EmailChangedEVTCopyWith<$Res> {
  factory $EmailChangedEVTCopyWith(
          EmailChangedEVT value, $Res Function(EmailChangedEVT) then) =
      _$EmailChangedEVTCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $EmailChangedEVTCopyWith<$Res> {
  _$EmailChangedEVTCopyWithImpl(
      EmailChangedEVT _value, $Res Function(EmailChangedEVT) _then)
      : super(_value, (v) => _then(v as EmailChangedEVT));

  @override
  EmailChangedEVT get _value => super._value as EmailChangedEVT;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChangedEVT(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChangedEVT implements EmailChangedEVT {
  const _$EmailChangedEVT(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.emailChangedEVT(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChangedEVT &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedEVTCopyWith<EmailChangedEVT> get copyWith =>
      _$EmailChangedEVTCopyWithImpl<EmailChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return emailChangedEVT(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChangedEVT != null) {
      return emailChangedEVT(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return emailChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChangedEVT != null) {
      return emailChangedEVT(this);
    }
    return orElse();
  }
}

abstract class EmailChangedEVT implements CreateAccountAuthenticationEvent {
  const factory EmailChangedEVT(String emailStr) = _$EmailChangedEVT;

  String get emailStr;
  $EmailChangedEVTCopyWith<EmailChangedEVT> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedEVTCopyWith<$Res> {
  factory $PasswordChangedEVTCopyWith(
          PasswordChangedEVT value, $Res Function(PasswordChangedEVT) then) =
      _$PasswordChangedEVTCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $PasswordChangedEVTCopyWith<$Res> {
  _$PasswordChangedEVTCopyWithImpl(
      PasswordChangedEVT _value, $Res Function(PasswordChangedEVT) _then)
      : super(_value, (v) => _then(v as PasswordChangedEVT));

  @override
  PasswordChangedEVT get _value => super._value as PasswordChangedEVT;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChangedEVT(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChangedEVT implements PasswordChangedEVT {
  const _$PasswordChangedEVT(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.passwordChangedEVT(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChangedEVT &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedEVTCopyWith<PasswordChangedEVT> get copyWith =>
      _$PasswordChangedEVTCopyWithImpl<PasswordChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return passwordChangedEVT(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChangedEVT != null) {
      return passwordChangedEVT(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return passwordChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChangedEVT != null) {
      return passwordChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEVT implements CreateAccountAuthenticationEvent {
  const factory PasswordChangedEVT(String passwordStr) = _$PasswordChangedEVT;

  String get passwordStr;
  $PasswordChangedEVTCopyWith<PasswordChangedEVT> get copyWith;
}

/// @nodoc
abstract class $ResendVerificationEmailEVTCopyWith<$Res> {
  factory $ResendVerificationEmailEVTCopyWith(ResendVerificationEmailEVT value,
          $Res Function(ResendVerificationEmailEVT) then) =
      _$ResendVerificationEmailEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendVerificationEmailEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $ResendVerificationEmailEVTCopyWith<$Res> {
  _$ResendVerificationEmailEVTCopyWithImpl(ResendVerificationEmailEVT _value,
      $Res Function(ResendVerificationEmailEVT) _then)
      : super(_value, (v) => _then(v as ResendVerificationEmailEVT));

  @override
  ResendVerificationEmailEVT get _value =>
      super._value as ResendVerificationEmailEVT;
}

/// @nodoc
class _$ResendVerificationEmailEVT implements ResendVerificationEmailEVT {
  const _$ResendVerificationEmailEVT();

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.resendVerificationEmailEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendVerificationEmailEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return resendVerificationEmailEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmailEVT != null) {
      return resendVerificationEmailEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return resendVerificationEmailEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendVerificationEmailEVT != null) {
      return resendVerificationEmailEVT(this);
    }
    return orElse();
  }
}

abstract class ResendVerificationEmailEVT
    implements CreateAccountAuthenticationEvent {
  const factory ResendVerificationEmailEVT() = _$ResendVerificationEmailEVT;
}

/// @nodoc
abstract class $UsernameChangedEVTCopyWith<$Res> {
  factory $UsernameChangedEVTCopyWith(
          UsernameChangedEVT value, $Res Function(UsernameChangedEVT) then) =
      _$UsernameChangedEVTCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class _$UsernameChangedEVTCopyWithImpl<$Res>
    extends _$CreateAccountAuthenticationEventCopyWithImpl<$Res>
    implements $UsernameChangedEVTCopyWith<$Res> {
  _$UsernameChangedEVTCopyWithImpl(
      UsernameChangedEVT _value, $Res Function(UsernameChangedEVT) _then)
      : super(_value, (v) => _then(v as UsernameChangedEVT));

  @override
  UsernameChangedEVT get _value => super._value as UsernameChangedEVT;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChangedEVT(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$UsernameChangedEVT implements UsernameChangedEVT {
  const _$UsernameChangedEVT(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'CreateAccountAuthenticationEvent.usernameChangedEVT(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChangedEVT &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsernameChangedEVTCopyWith<UsernameChangedEVT> get copyWith =>
      _$UsernameChangedEVTCopyWithImpl<UsernameChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(
            String confirmPasswordStr, String passwordStr),
    @required TResult createAccountEVT(),
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult resendVerificationEmailEVT(),
    @required TResult usernameChangedEVT(String usernameStr),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return usernameChangedEVT(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult confirmPasswordChangedEVT(
        String confirmPasswordStr, String passwordStr),
    TResult createAccountEVT(),
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult resendVerificationEmailEVT(),
    TResult usernameChangedEVT(String usernameStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChangedEVT != null) {
      return usernameChangedEVT(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    @required TResult createAccountEVT(CreateAccountEVT value),
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    @required TResult usernameChangedEVT(UsernameChangedEVT value),
  }) {
    assert(confirmPasswordChangedEVT != null);
    assert(createAccountEVT != null);
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(resendVerificationEmailEVT != null);
    assert(usernameChangedEVT != null);
    return usernameChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult confirmPasswordChangedEVT(ConfirmPasswordChangedEVT value),
    TResult createAccountEVT(CreateAccountEVT value),
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult resendVerificationEmailEVT(ResendVerificationEmailEVT value),
    TResult usernameChangedEVT(UsernameChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChangedEVT != null) {
      return usernameChangedEVT(this);
    }
    return orElse();
  }
}

abstract class UsernameChangedEVT implements CreateAccountAuthenticationEvent {
  const factory UsernameChangedEVT(String usernameStr) = _$UsernameChangedEVT;

  String get usernameStr;
  $UsernameChangedEVTCopyWith<UsernameChangedEVT> get copyWith;
}

/// @nodoc
class _$CreateAccountAuthenticationStateTearOff {
  const _$CreateAccountAuthenticationStateTearOff();

// ignore: unused_element
  _CreateAccountAuthenticationState call(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authenticationFailureOrSuccessOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          Username username}) {
    return _CreateAccountAuthenticationState(
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      emailAddress: emailAddress,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption,
      confirmPassword: confirmPassword,
      password: password,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateAccountAuthenticationState =
    _$CreateAccountAuthenticationStateTearOff();

/// @nodoc
mixin _$CreateAccountAuthenticationState {
  bool get isSubmitting;
  bool get showErrorMessages;
  EmailAddress get emailAddress;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  Password get confirmPassword;
  Password get password;
  Username get username;

  $CreateAccountAuthenticationStateCopyWith<CreateAccountAuthenticationState>
      get copyWith;
}

/// @nodoc
abstract class $CreateAccountAuthenticationStateCopyWith<$Res> {
  factory $CreateAccountAuthenticationStateCopyWith(
          CreateAccountAuthenticationState value,
          $Res Function(CreateAccountAuthenticationState) then) =
      _$CreateAccountAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption,
      Password confirmPassword,
      Password password,
      Username username});
}

/// @nodoc
class _$CreateAccountAuthenticationStateCopyWithImpl<$Res>
    implements $CreateAccountAuthenticationStateCopyWith<$Res> {
  _$CreateAccountAuthenticationStateCopyWithImpl(this._value, this._then);

  final CreateAccountAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(CreateAccountAuthenticationState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
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
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
abstract class _$CreateAccountAuthenticationStateCopyWith<$Res>
    implements $CreateAccountAuthenticationStateCopyWith<$Res> {
  factory _$CreateAccountAuthenticationStateCopyWith(
          _CreateAccountAuthenticationState value,
          $Res Function(_CreateAccountAuthenticationState) then) =
      __$CreateAccountAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authenticationFailureOrSuccessOption,
      Password confirmPassword,
      Password password,
      Username username});
}

/// @nodoc
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
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationFailureOrSuccessOption = freezed,
    Object confirmPassword = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_CreateAccountAuthenticationState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authenticationFailureOrSuccessOption:
          authenticationFailureOrSuccessOption == freezed
              ? _value.authenticationFailureOrSuccessOption
              : authenticationFailureOrSuccessOption as Option<
                  Either<AuthenticationFailure, AuthenticationSuccess>>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
class _$_CreateAccountAuthenticationState
    implements _CreateAccountAuthenticationState {
  const _$_CreateAccountAuthenticationState(
      {@required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.emailAddress,
      @required this.authenticationFailureOrSuccessOption,
      @required this.confirmPassword,
      @required this.password,
      @required this.username})
      : assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(emailAddress != null),
        assert(authenticationFailureOrSuccessOption != null),
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
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authenticationFailureOrSuccessOption;
  @override
  final Password confirmPassword;
  @override
  final Password password;
  @override
  final Username username;

  @override
  String toString() {
    return 'CreateAccountAuthenticationState(isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, emailAddress: $emailAddress, authenticationFailureOrSuccessOption: $authenticationFailureOrSuccessOption, confirmPassword: $confirmPassword, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAccountAuthenticationState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authenticationFailureOrSuccessOption,
                    authenticationFailureOrSuccessOption)) &&
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
      const DeepCollectionEquality()
          .hash(authenticationFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @override
  _$CreateAccountAuthenticationStateCopyWith<_CreateAccountAuthenticationState>
      get copyWith => __$CreateAccountAuthenticationStateCopyWithImpl<
          _CreateAccountAuthenticationState>(this, _$identity);
}

abstract class _CreateAccountAuthenticationState
    implements CreateAccountAuthenticationState {
  const factory _CreateAccountAuthenticationState(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authenticationFailureOrSuccessOption,
      @required
          Password confirmPassword,
      @required
          Password password,
      @required
          Username username}) = _$_CreateAccountAuthenticationState;

  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authenticationFailureOrSuccessOption;
  @override
  Password get confirmPassword;
  @override
  Password get password;
  @override
  Username get username;
  @override
  _$CreateAccountAuthenticationStateCopyWith<_CreateAccountAuthenticationState>
      get copyWith;
}
