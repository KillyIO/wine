// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LogInEventTearOff {
  const _$LogInEventTearOff();

  EmailAddressChanged emailAddressChanged(String emailAddressStr) {
    return EmailAddressChanged(
      emailAddressStr,
    );
  }

  LoggedInWithEmailAndPassword loggedInWithEmailAndPassword() {
    return const LoggedInWithEmailAndPassword();
  }

  LoggedInWithGoogle loggedInWithGoogle() {
    return const LoggedInWithGoogle();
  }

  LogInWithEmailAndPasswordPressed logInWithEmailAndPasswordPressed() {
    return const LogInWithEmailAndPasswordPressed();
  }

  LogInWithGooglePressed logInWithGooglePressed() {
    return const LogInWithGooglePressed();
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  UserDetailsSaved userDetailsSaved(User user) {
    return UserDetailsSaved(
      user,
    );
  }

  UserLoaded userLoaded(User user) {
    return UserLoaded(
      user,
    );
  }
}

/// @nodoc
const $LogInEvent = _$LogInEventTearOff();

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class $EmailAddressChangedCopyWith<$Res> {
  factory $EmailAddressChangedCopyWith(
          EmailAddressChanged value, $Res Function(EmailAddressChanged) then) =
      _$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailAddressStr});
}

/// @nodoc
class _$EmailAddressChangedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $EmailAddressChangedCopyWith<$Res> {
  _$EmailAddressChangedCopyWithImpl(
      EmailAddressChanged _value, $Res Function(EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as EmailAddressChanged));

  @override
  EmailAddressChanged get _value => super._value as EmailAddressChanged;

  @override
  $Res call({
    Object? emailAddressStr = freezed,
  }) {
    return _then(EmailAddressChanged(
      emailAddressStr == freezed
          ? _value.emailAddressStr
          : emailAddressStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailAddressChanged implements EmailAddressChanged {
  const _$EmailAddressChanged(this.emailAddressStr);

  @override
  final String emailAddressStr;

  @override
  String toString() {
    return 'LogInEvent.emailAddressChanged(emailAddressStr: $emailAddressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailAddressChanged &&
            (identical(other.emailAddressStr, emailAddressStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddressStr, emailAddressStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddressStr);

  @JsonKey(ignore: true)
  @override
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      _$EmailAddressChangedCopyWithImpl<EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return emailAddressChanged(emailAddressStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements LogInEvent {
  const factory EmailAddressChanged(String emailAddressStr) =
      _$EmailAddressChanged;

  String get emailAddressStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInWithEmailAndPasswordCopyWith<$Res> {
  factory $LoggedInWithEmailAndPasswordCopyWith(
          LoggedInWithEmailAndPassword value,
          $Res Function(LoggedInWithEmailAndPassword) then) =
      _$LoggedInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $LoggedInWithEmailAndPasswordCopyWith<$Res> {
  _$LoggedInWithEmailAndPasswordCopyWithImpl(
      LoggedInWithEmailAndPassword _value,
      $Res Function(LoggedInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as LoggedInWithEmailAndPassword));

  @override
  LoggedInWithEmailAndPassword get _value =>
      super._value as LoggedInWithEmailAndPassword;
}

/// @nodoc

class _$LoggedInWithEmailAndPassword implements LoggedInWithEmailAndPassword {
  const _$LoggedInWithEmailAndPassword();

  @override
  String toString() {
    return 'LogInEvent.loggedInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return loggedInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (loggedInWithEmailAndPassword != null) {
      return loggedInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return loggedInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (loggedInWithEmailAndPassword != null) {
      return loggedInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoggedInWithEmailAndPassword implements LogInEvent {
  const factory LoggedInWithEmailAndPassword() = _$LoggedInWithEmailAndPassword;
}

/// @nodoc
abstract class $LoggedInWithGoogleCopyWith<$Res> {
  factory $LoggedInWithGoogleCopyWith(
          LoggedInWithGoogle value, $Res Function(LoggedInWithGoogle) then) =
      _$LoggedInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInWithGoogleCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $LoggedInWithGoogleCopyWith<$Res> {
  _$LoggedInWithGoogleCopyWithImpl(
      LoggedInWithGoogle _value, $Res Function(LoggedInWithGoogle) _then)
      : super(_value, (v) => _then(v as LoggedInWithGoogle));

  @override
  LoggedInWithGoogle get _value => super._value as LoggedInWithGoogle;
}

/// @nodoc

class _$LoggedInWithGoogle implements LoggedInWithGoogle {
  const _$LoggedInWithGoogle();

  @override
  String toString() {
    return 'LogInEvent.loggedInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return loggedInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (loggedInWithGoogle != null) {
      return loggedInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return loggedInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (loggedInWithGoogle != null) {
      return loggedInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LoggedInWithGoogle implements LogInEvent {
  const factory LoggedInWithGoogle() = _$LoggedInWithGoogle;
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
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return logInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return logInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return logInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (logInWithGooglePressed != null) {
      return logInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return logInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
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
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

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
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LogInEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsSavedCopyWith<$Res> {
  factory $UserDetailsSavedCopyWith(
          UserDetailsSaved value, $Res Function(UserDetailsSaved) then) =
      _$UserDetailsSavedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
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

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserDetailsSaved(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserDetailsSaved implements UserDetailsSaved {
  const _$UserDetailsSaved(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'LogInEvent.userDetailsSaved(user: $user)';
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
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return userDetailsSaved(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (userDetailsSaved != null) {
      return userDetailsSaved(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return userDetailsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (userDetailsSaved != null) {
      return userDetailsSaved(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSaved implements LogInEvent {
  const factory UserDetailsSaved(User user) = _$UserDetailsSaved;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsSavedCopyWith<UserDetailsSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoadedCopyWith<$Res> {
  factory $UserLoadedCopyWith(
          UserLoaded value, $Res Function(UserLoaded) then) =
      _$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLoadedCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(UserLoaded _value, $Res Function(UserLoaded) _then)
      : super(_value, (v) => _then(v as UserLoaded));

  @override
  UserLoaded get _value => super._value as UserLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserLoaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoaded implements UserLoaded {
  const _$UserLoaded(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'LogInEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedCopyWith<UserLoaded> get copyWith =>
      _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddressStr) emailAddressChanged,
    required TResult Function() loggedInWithEmailAndPassword,
    required TResult Function() loggedInWithGoogle,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithGooglePressed,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function(User user) userLoaded,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddressStr)? emailAddressChanged,
    TResult Function()? loggedInWithEmailAndPassword,
    TResult Function()? loggedInWithGoogle,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithGooglePressed,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(User user)? userDetailsSaved,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(LoggedInWithEmailAndPassword value)
        loggedInWithEmailAndPassword,
    required TResult Function(LoggedInWithGoogle value) loggedInWithGoogle,
    required TResult Function(LogInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(LogInWithGooglePressed value)
        logInWithGooglePressed,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(LoggedInWithEmailAndPassword value)?
        loggedInWithEmailAndPassword,
    TResult Function(LoggedInWithGoogle value)? loggedInWithGoogle,
    TResult Function(LogInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(LogInWithGooglePressed value)? logInWithGooglePressed,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements LogInEvent {
  const factory UserLoaded(User user) = _$UserLoaded;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoadedCopyWith<UserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

  _LogInState call(
      {required EmailAddress emailAddress,
      required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isAuthenticated,
      required bool isProcessing,
      required Password password,
      required bool showErrorMessages}) {
    return _LogInState(
      emailAddress: emailAddress,
      failureOption: failureOption,
      isAuthenticated: isAuthenticated,
      isProcessing: isProcessing,
      password: password,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Option<Result<dynamic, CoreFailure>> failureOption,
      bool isAuthenticated,
      bool isProcessing,
      Password password,
      bool showErrorMessages});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? failureOption = freezed,
    Object? isAuthenticated = freezed,
    Object? isProcessing = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {EmailAddress emailAddress,
      Option<Result<dynamic, CoreFailure>> failureOption,
      bool isAuthenticated,
      bool isProcessing,
      Password password,
      bool showErrorMessages});
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
    Object? emailAddress = freezed,
    Object? failureOption = freezed,
    Object? isAuthenticated = freezed,
    Object? isProcessing = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_LogInState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {required this.emailAddress,
      required this.failureOption,
      required this.isAuthenticated,
      required this.isProcessing,
      required this.password,
      required this.showErrorMessages});

  @override
  final EmailAddress emailAddress;
  @override
  final Option<Result<dynamic, CoreFailure>> failureOption;
  @override
  final bool isAuthenticated;
  @override
  final bool isProcessing;
  @override
  final Password password;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'LogInState(emailAddress: $emailAddress, failureOption: $failureOption, isAuthenticated: $isAuthenticated, isProcessing: $isProcessing, password: $password, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(failureOption) ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
      {required EmailAddress emailAddress,
      required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isAuthenticated,
      required bool isProcessing,
      required Password password,
      required bool showErrorMessages}) = _$_LogInState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isAuthenticated => throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}
