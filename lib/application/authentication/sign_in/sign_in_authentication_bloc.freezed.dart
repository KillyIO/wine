// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInAuthenticationEventTearOff {
  const _$SignInAuthenticationEventTearOff();

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
  SignInWithEmailAndPasswordPressedEVT signInWithEmailAndPasswordPressedEVT() {
    return const SignInWithEmailAndPasswordPressedEVT();
  }

// ignore: unused_element
  SignInWithGooglePressedEVT signInWithGooglePressedEVT() {
    return const SignInWithGooglePressedEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInAuthenticationEvent = _$SignInAuthenticationEventTearOff();

/// @nodoc
mixin _$SignInAuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult signInWithEmailAndPasswordPressedEVT(),
    @required TResult signInWithGooglePressedEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult signInWithEmailAndPasswordPressedEVT(),
    TResult signInWithGooglePressedEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult signInWithEmailAndPasswordPressedEVT(
            SignInWithEmailAndPasswordPressedEVT value),
    @required
        TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult signInWithEmailAndPasswordPressedEVT(
        SignInWithEmailAndPasswordPressedEVT value),
    TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInAuthenticationEventCopyWith<$Res> {
  factory $SignInAuthenticationEventCopyWith(SignInAuthenticationEvent value,
          $Res Function(SignInAuthenticationEvent) then) =
      _$SignInAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInAuthenticationEventCopyWithImpl<$Res>
    implements $SignInAuthenticationEventCopyWith<$Res> {
  _$SignInAuthenticationEventCopyWithImpl(this._value, this._then);

  final SignInAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(SignInAuthenticationEvent) _then;
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
    extends _$SignInAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignInAuthenticationEvent.emailChangedEVT(emailStr: $emailStr)';
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
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult signInWithEmailAndPasswordPressedEVT(),
    @required TResult signInWithGooglePressedEVT(),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return emailChangedEVT(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult signInWithEmailAndPasswordPressedEVT(),
    TResult signInWithGooglePressedEVT(),
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
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult signInWithEmailAndPasswordPressedEVT(
            SignInWithEmailAndPasswordPressedEVT value),
    @required
        TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return emailChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult signInWithEmailAndPasswordPressedEVT(
        SignInWithEmailAndPasswordPressedEVT value),
    TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChangedEVT != null) {
      return emailChangedEVT(this);
    }
    return orElse();
  }
}

abstract class EmailChangedEVT implements SignInAuthenticationEvent {
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
    extends _$SignInAuthenticationEventCopyWithImpl<$Res>
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
    return 'SignInAuthenticationEvent.passwordChangedEVT(passwordStr: $passwordStr)';
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
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult signInWithEmailAndPasswordPressedEVT(),
    @required TResult signInWithGooglePressedEVT(),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return passwordChangedEVT(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult signInWithEmailAndPasswordPressedEVT(),
    TResult signInWithGooglePressedEVT(),
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
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult signInWithEmailAndPasswordPressedEVT(
            SignInWithEmailAndPasswordPressedEVT value),
    @required
        TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return passwordChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult signInWithEmailAndPasswordPressedEVT(
        SignInWithEmailAndPasswordPressedEVT value),
    TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChangedEVT != null) {
      return passwordChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEVT implements SignInAuthenticationEvent {
  const factory PasswordChangedEVT(String passwordStr) = _$PasswordChangedEVT;

  String get passwordStr;
  $PasswordChangedEVTCopyWith<PasswordChangedEVT> get copyWith;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedEVTCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedEVTCopyWith(
          SignInWithEmailAndPasswordPressedEVT value,
          $Res Function(SignInWithEmailAndPasswordPressedEVT) then) =
      _$SignInWithEmailAndPasswordPressedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedEVTCopyWithImpl<$Res>
    extends _$SignInAuthenticationEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedEVTCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedEVTCopyWithImpl(
      SignInWithEmailAndPasswordPressedEVT _value,
      $Res Function(SignInWithEmailAndPasswordPressedEVT) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressedEVT));

  @override
  SignInWithEmailAndPasswordPressedEVT get _value =>
      super._value as SignInWithEmailAndPasswordPressedEVT;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedEVT
    implements SignInWithEmailAndPasswordPressedEVT {
  const _$SignInWithEmailAndPasswordPressedEVT();

  @override
  String toString() {
    return 'SignInAuthenticationEvent.signInWithEmailAndPasswordPressedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult signInWithEmailAndPasswordPressedEVT(),
    @required TResult signInWithGooglePressedEVT(),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return signInWithEmailAndPasswordPressedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult signInWithEmailAndPasswordPressedEVT(),
    TResult signInWithGooglePressedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressedEVT != null) {
      return signInWithEmailAndPasswordPressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult signInWithEmailAndPasswordPressedEVT(
            SignInWithEmailAndPasswordPressedEVT value),
    @required
        TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return signInWithEmailAndPasswordPressedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult signInWithEmailAndPasswordPressedEVT(
        SignInWithEmailAndPasswordPressedEVT value),
    TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressedEVT != null) {
      return signInWithEmailAndPasswordPressedEVT(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressedEVT
    implements SignInAuthenticationEvent {
  const factory SignInWithEmailAndPasswordPressedEVT() =
      _$SignInWithEmailAndPasswordPressedEVT;
}

/// @nodoc
abstract class $SignInWithGooglePressedEVTCopyWith<$Res> {
  factory $SignInWithGooglePressedEVTCopyWith(SignInWithGooglePressedEVT value,
          $Res Function(SignInWithGooglePressedEVT) then) =
      _$SignInWithGooglePressedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressedEVTCopyWithImpl<$Res>
    extends _$SignInAuthenticationEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedEVTCopyWith<$Res> {
  _$SignInWithGooglePressedEVTCopyWithImpl(SignInWithGooglePressedEVT _value,
      $Res Function(SignInWithGooglePressedEVT) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressedEVT));

  @override
  SignInWithGooglePressedEVT get _value =>
      super._value as SignInWithGooglePressedEVT;
}

/// @nodoc
class _$SignInWithGooglePressedEVT implements SignInWithGooglePressedEVT {
  const _$SignInWithGooglePressedEVT();

  @override
  String toString() {
    return 'SignInAuthenticationEvent.signInWithGooglePressedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChangedEVT(String emailStr),
    @required TResult passwordChangedEVT(String passwordStr),
    @required TResult signInWithEmailAndPasswordPressedEVT(),
    @required TResult signInWithGooglePressedEVT(),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return signInWithGooglePressedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChangedEVT(String emailStr),
    TResult passwordChangedEVT(String passwordStr),
    TResult signInWithEmailAndPasswordPressedEVT(),
    TResult signInWithGooglePressedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressedEVT != null) {
      return signInWithGooglePressedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChangedEVT(EmailChangedEVT value),
    @required TResult passwordChangedEVT(PasswordChangedEVT value),
    @required
        TResult signInWithEmailAndPasswordPressedEVT(
            SignInWithEmailAndPasswordPressedEVT value),
    @required
        TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
  }) {
    assert(emailChangedEVT != null);
    assert(passwordChangedEVT != null);
    assert(signInWithEmailAndPasswordPressedEVT != null);
    assert(signInWithGooglePressedEVT != null);
    return signInWithGooglePressedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChangedEVT(EmailChangedEVT value),
    TResult passwordChangedEVT(PasswordChangedEVT value),
    TResult signInWithEmailAndPasswordPressedEVT(
        SignInWithEmailAndPasswordPressedEVT value),
    TResult signInWithGooglePressedEVT(SignInWithGooglePressedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressedEVT != null) {
      return signInWithGooglePressedEVT(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressedEVT implements SignInAuthenticationEvent {
  const factory SignInWithGooglePressedEVT() = _$SignInWithGooglePressedEVT;
}

/// @nodoc
class _$SignInAuthenticationStateTearOff {
  const _$SignInAuthenticationStateTearOff();

// ignore: unused_element
  _SignInAuthenticationState call(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authFailureOrSuccessOption,
      @required
          Password password}) {
    return _SignInAuthenticationState(
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      emailAddress: emailAddress,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInAuthenticationState = _$SignInAuthenticationStateTearOff();

/// @nodoc
mixin _$SignInAuthenticationState {
  bool get isSubmitting;
  bool get showErrorMessages;
  EmailAddress get emailAddress;
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authFailureOrSuccessOption;
  Password get password;

  $SignInAuthenticationStateCopyWith<SignInAuthenticationState> get copyWith;
}

/// @nodoc
abstract class $SignInAuthenticationStateCopyWith<$Res> {
  factory $SignInAuthenticationStateCopyWith(SignInAuthenticationState value,
          $Res Function(SignInAuthenticationState) then) =
      _$SignInAuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authFailureOrSuccessOption,
      Password password});
}

/// @nodoc
class _$SignInAuthenticationStateCopyWithImpl<$Res>
    implements $SignInAuthenticationStateCopyWith<$Res> {
  _$SignInAuthenticationStateCopyWithImpl(this._value, this._then);

  final SignInAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(SignInAuthenticationState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object password = freezed,
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
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<AuthenticationFailure, AuthenticationSuccess>>,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

/// @nodoc
abstract class _$SignInAuthenticationStateCopyWith<$Res>
    implements $SignInAuthenticationStateCopyWith<$Res> {
  factory _$SignInAuthenticationStateCopyWith(_SignInAuthenticationState value,
          $Res Function(_SignInAuthenticationState) then) =
      __$SignInAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, AuthenticationSuccess>>
          authFailureOrSuccessOption,
      Password password});
}

/// @nodoc
class __$SignInAuthenticationStateCopyWithImpl<$Res>
    extends _$SignInAuthenticationStateCopyWithImpl<$Res>
    implements _$SignInAuthenticationStateCopyWith<$Res> {
  __$SignInAuthenticationStateCopyWithImpl(_SignInAuthenticationState _value,
      $Res Function(_SignInAuthenticationState) _then)
      : super(_value, (v) => _then(v as _SignInAuthenticationState));

  @override
  _SignInAuthenticationState get _value =>
      super._value as _SignInAuthenticationState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object password = freezed,
  }) {
    return _then(_SignInAuthenticationState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<AuthenticationFailure, AuthenticationSuccess>>,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

/// @nodoc
class _$_SignInAuthenticationState implements _SignInAuthenticationState {
  const _$_SignInAuthenticationState(
      {@required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.emailAddress,
      @required this.authFailureOrSuccessOption,
      @required this.password})
      : assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(emailAddress != null),
        assert(authFailureOrSuccessOption != null),
        assert(password != null);

  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      authFailureOrSuccessOption;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInAuthenticationState(isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, emailAddress: $emailAddress, authFailureOrSuccessOption: $authFailureOrSuccessOption, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInAuthenticationState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$SignInAuthenticationStateCopyWith<_SignInAuthenticationState>
      get copyWith =>
          __$SignInAuthenticationStateCopyWithImpl<_SignInAuthenticationState>(
              this, _$identity);
}

abstract class _SignInAuthenticationState implements SignInAuthenticationState {
  const factory _SignInAuthenticationState(
      {@required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, AuthenticationSuccess>>
              authFailureOrSuccessOption,
      @required
          Password password}) = _$_SignInAuthenticationState;

  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, AuthenticationSuccess>>
      get authFailureOrSuccessOption;
  @override
  Password get password;
  @override
  _$SignInAuthenticationStateCopyWith<_SignInAuthenticationState> get copyWith;
}
