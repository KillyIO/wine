// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LogInEventTearOff {
  const _$LogInEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  LoggedIn loggedIn() {
    return const LoggedIn();
  }

// ignore: unused_element
  LogInWithEmailAndPasswordPressed logInWithEmailAndPasswordPressed() {
    return const LogInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  LogInWithGooglePressed logInWithGooglePressed() {
    return const LogInWithGooglePressed();
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  UserDetailsSaved userDetailsSaved() {
    return const UserDetailsSaved();
  }
}

/// @nodoc
// ignore: unused_element
const $LogInEvent = _$LogInEventTearOff();

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  final LogInEvent _value;
  // ignore: unused_field
  final $Res Function(LogInEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
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
    return 'LogInEvent.emailChanged(emailStr: $emailStr)';
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
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
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
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LogInEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;
}

/// @nodoc
class _$LoggedIn implements LoggedIn {
  const _$LoggedIn();

  @override
  String toString() {
    return 'LogInEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements LogInEvent {
  const factory LoggedIn() = _$LoggedIn;
}

/// @nodoc
abstract class $LogInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $LogInWithEmailAndPasswordPressedCopyWith(
          LogInWithEmailAndPasswordPressed value,
          $Res Function(LogInWithEmailAndPasswordPressed) then) =
      _$LogInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $LogInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$LogInWithEmailAndPasswordPressedCopyWithImpl(
      LogInWithEmailAndPasswordPressed _value,
      $Res Function(LogInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as LogInWithEmailAndPasswordPressed));

  @override
  LogInWithEmailAndPasswordPressed get _value =>
      super._value as LogInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$LogInWithEmailAndPasswordPressed
    implements LogInWithEmailAndPasswordPressed {
  const _$LogInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LogInEvent.logInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return logInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return logInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LogInWithEmailAndPasswordPressed implements LogInEvent {
  const factory LogInWithEmailAndPasswordPressed() =
      _$LogInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $LogInWithGooglePressedCopyWith<$Res> {
  factory $LogInWithGooglePressedCopyWith(LogInWithGooglePressed value,
          $Res Function(LogInWithGooglePressed) then) =
      _$LogInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInWithGooglePressedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $LogInWithGooglePressedCopyWith<$Res> {
  _$LogInWithGooglePressedCopyWithImpl(LogInWithGooglePressed _value,
      $Res Function(LogInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as LogInWithGooglePressed));

  @override
  LogInWithGooglePressed get _value => super._value as LogInWithGooglePressed;
}

/// @nodoc
class _$LogInWithGooglePressed implements LogInWithGooglePressed {
  const _$LogInWithGooglePressed();

  @override
  String toString() {
    return 'LogInEvent.logInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return logInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithGooglePressed != null) {
      return logInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return logInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithGooglePressed != null) {
      return logInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LogInWithGooglePressed implements LogInEvent {
  const factory LogInWithGooglePressed() = _$LogInWithGooglePressed;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
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
    return 'LogInEvent.passwordChanged(passwordStr: $passwordStr)';
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
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
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
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LogInEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $UserDetailsSavedCopyWith<$Res> {
  factory $UserDetailsSavedCopyWith(
          UserDetailsSaved value, $Res Function(UserDetailsSaved) then) =
      _$UserDetailsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDetailsSavedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $UserDetailsSavedCopyWith<$Res> {
  _$UserDetailsSavedCopyWithImpl(
      UserDetailsSaved _value, $Res Function(UserDetailsSaved) _then)
      : super(_value, (v) => _then(v as UserDetailsSaved));

  @override
  UserDetailsSaved get _value => super._value as UserDetailsSaved;
}

/// @nodoc
class _$UserDetailsSaved implements UserDetailsSaved {
  const _$UserDetailsSaved();

  @override
  String toString() {
    return 'LogInEvent.userDetailsSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDetailsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult loggedIn(),
    @required TResult logInWithEmailAndPasswordPressed(),
    @required TResult logInWithGooglePressed(),
    @required TResult passwordChanged(String passwordStr),
    @required TResult userDetailsSaved(),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return userDetailsSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult loggedIn(),
    TResult logInWithEmailAndPasswordPressed(),
    TResult logInWithGooglePressed(),
    TResult passwordChanged(String passwordStr),
    TResult userDetailsSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSaved != null) {
      return userDetailsSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult loggedIn(LoggedIn value),
    @required
        TResult logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult logInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(loggedIn != null);
    assert(logInWithEmailAndPasswordPressed != null);
    assert(logInWithGooglePressed != null);
    assert(passwordChanged != null);
    assert(userDetailsSaved != null);
    return userDetailsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult loggedIn(LoggedIn value),
    TResult logInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult logInWithGooglePressed(LogInWithGooglePressed value),
    TResult passwordChanged(PasswordChanged value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSaved != null) {
      return userDetailsSaved(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSaved implements LogInEvent {
  const factory UserDetailsSaved() = _$UserDetailsSaved;
}

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

// ignore: unused_element
  _LogInState call(
      {@required Option<Either<AuthFailure, Unit>> authOption,
      @required EmailAddress emailAddress,
      @required bool isProcessing,
      @required Password password,
      @required bool showErrorMessages,
      @required Option<Either<UserFailure, dynamic>> userOption}) {
    return _LogInState(
      authOption: authOption,
      emailAddress: emailAddress,
      isProcessing: isProcessing,
      password: password,
      showErrorMessages: showErrorMessages,
      userOption: userOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  Option<Either<AuthFailure, Unit>> get authOption;
  EmailAddress get emailAddress;
  bool get isProcessing;
  Password get password;
  bool get showErrorMessages;
  Option<Either<UserFailure, dynamic>> get userOption;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<AuthFailure, Unit>> authOption,
      EmailAddress emailAddress,
      bool isProcessing,
      Password password,
      bool showErrorMessages,
      Option<Either<UserFailure, dynamic>> userOption});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object authOption = freezed,
    Object emailAddress = freezed,
    Object isProcessing = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object userOption = freezed,
  }) {
    return _then(_value.copyWith(
      authOption: authOption == freezed
          ? _value.authOption
          : authOption as Option<Either<AuthFailure, Unit>>,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$LogInStateCopyWith<$Res> implements $LogInStateCopyWith<$Res> {
  factory _$LogInStateCopyWith(
          _LogInState value, $Res Function(_LogInState) then) =
      __$LogInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<AuthFailure, Unit>> authOption,
      EmailAddress emailAddress,
      bool isProcessing,
      Password password,
      bool showErrorMessages,
      Option<Either<UserFailure, dynamic>> userOption});
}

/// @nodoc
class __$LogInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$LogInStateCopyWith<$Res> {
  __$LogInStateCopyWithImpl(
      _LogInState _value, $Res Function(_LogInState) _then)
      : super(_value, (v) => _then(v as _LogInState));

  @override
  _LogInState get _value => super._value as _LogInState;

  @override
  $Res call({
    Object authOption = freezed,
    Object emailAddress = freezed,
    Object isProcessing = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object userOption = freezed,
  }) {
    return _then(_LogInState(
      authOption: authOption == freezed
          ? _value.authOption
          : authOption as Option<Either<AuthFailure, Unit>>,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
    ));
  }
}

/// @nodoc
class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {@required this.authOption,
      @required this.emailAddress,
      @required this.isProcessing,
      @required this.password,
      @required this.showErrorMessages,
      @required this.userOption})
      : assert(authOption != null),
        assert(emailAddress != null),
        assert(isProcessing != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(userOption != null);

  @override
  final Option<Either<AuthFailure, Unit>> authOption;
  @override
  final EmailAddress emailAddress;
  @override
  final bool isProcessing;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<UserFailure, dynamic>> userOption;

  @override
  String toString() {
    return 'LogInState(authOption: $authOption, emailAddress: $emailAddress, isProcessing: $isProcessing, password: $password, showErrorMessages: $showErrorMessages, userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInState &&
            (identical(other.authOption, authOption) ||
                const DeepCollectionEquality()
                    .equals(other.authOption, authOption)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authOption) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(userOption);

  @JsonKey(ignore: true)
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
          {@required Option<Either<AuthFailure, Unit>> authOption,
          @required EmailAddress emailAddress,
          @required bool isProcessing,
          @required Password password,
          @required bool showErrorMessages,
          @required Option<Either<UserFailure, dynamic>> userOption}) =
      _$_LogInState;

  @override
  Option<Either<AuthFailure, Unit>> get authOption;
  @override
  EmailAddress get emailAddress;
  @override
  bool get isProcessing;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<UserFailure, dynamic>> get userOption;
  @override
  @JsonKey(ignore: true)
  _$LogInStateCopyWith<_LogInState> get copyWith;
}
