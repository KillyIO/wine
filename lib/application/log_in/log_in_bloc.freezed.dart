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
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  SignedIn signedIn(User user) {
    return SignedIn(
      user,
    );
  }

// ignore: unused_element
  LogInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const LogInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  LogInWithGooglePressed signInWithGooglePressed() {
    return const LogInWithGooglePressed();
  }

// ignore: unused_element
  UserDetailsSaved userDetailsSaved(User user) {
    return UserDetailsSaved(
      user,
    );
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
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
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
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
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
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
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
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
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
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
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
abstract class $SignedInCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$SignedInCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements $SignedInCopyWith<$Res> {
  _$SignedInCopyWithImpl(SignedIn _value, $Res Function(SignedIn) _then)
      : super(_value, (v) => _then(v as SignedIn));

  @override
  SignedIn get _value => super._value as SignedIn;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignedIn(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$SignedIn implements SignedIn {
  const _$SignedIn(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'LogInEvent.signedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $SignedInCopyWith<SignedIn> get copyWith =>
      _$SignedInCopyWithImpl<SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements LogInEvent {
  const factory SignedIn(User user) = _$SignedIn;

  User get user;
  @JsonKey(ignore: true)
  $SignedInCopyWith<SignedIn> get copyWith;
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
    return 'LogInEvent.signInWithEmailAndPasswordPressed()';
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
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
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
    return 'LogInEvent.signInWithGooglePressed()';
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
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
    TResult userDetailsSaved(UserDetailsSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LogInWithGooglePressed implements LogInEvent {
  const factory LogInWithGooglePressed() = _$LogInWithGooglePressed;
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
    extends _$LogInEventCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult signedIn(User user),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
    @required TResult userDetailsSaved(User user),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return userDetailsSaved(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult signedIn(User user),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    TResult userDetailsSaved(User user),
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
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult signedIn(SignedIn value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            LogInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(LogInWithGooglePressed value),
    @required TResult userDetailsSaved(UserDetailsSaved value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signedIn != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(userDetailsSaved != null);
    return userDetailsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult signedIn(SignedIn value),
    TResult signInWithEmailAndPasswordPressed(
        LogInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(LogInWithGooglePressed value),
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
  const factory UserDetailsSaved(User user) = _$UserDetailsSaved;

  User get user;
  @JsonKey(ignore: true)
  $UserDetailsSavedCopyWith<UserDetailsSaved> get copyWith;
}

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

// ignore: unused_element
  _LogInState call(
      {@required
          bool isProcessing,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, User>> authenticationOption,
      @required
          Option<Either<SessionFailure, dynamic>> sessionOption,
      @required
          Option<Either<UserFailure, dynamic>> userOption,
      @required
          Password password}) {
    return _LogInState(
      isProcessing: isProcessing,
      showErrorMessages: showErrorMessages,
      emailAddress: emailAddress,
      authenticationOption: authenticationOption,
      sessionOption: sessionOption,
      userOption: userOption,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  bool get isProcessing;
  bool get showErrorMessages;
  EmailAddress get emailAddress;
  Option<Either<AuthenticationFailure, User>> get authenticationOption;
  Option<Either<SessionFailure, dynamic>> get sessionOption;
  Option<Either<UserFailure, dynamic>> get userOption;
  Password get password;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, User>> authenticationOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<UserFailure, dynamic>> userOption,
      Password password});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object isProcessing = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object sessionOption = freezed,
    Object userOption = freezed,
    Object password = freezed,
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
          : authenticationOption as Option<Either<AuthenticationFailure, User>>,
      sessionOption: sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, dynamic>>,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
      password: password == freezed ? _value.password : password as Password,
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
      {bool isProcessing,
      bool showErrorMessages,
      EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, User>> authenticationOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<UserFailure, dynamic>> userOption,
      Password password});
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
    Object isProcessing = freezed,
    Object showErrorMessages = freezed,
    Object emailAddress = freezed,
    Object authenticationOption = freezed,
    Object sessionOption = freezed,
    Object userOption = freezed,
    Object password = freezed,
  }) {
    return _then(_LogInState(
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
          : authenticationOption as Option<Either<AuthenticationFailure, User>>,
      sessionOption: sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, dynamic>>,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

/// @nodoc
class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {@required this.isProcessing,
      @required this.showErrorMessages,
      @required this.emailAddress,
      @required this.authenticationOption,
      @required this.sessionOption,
      @required this.userOption,
      @required this.password})
      : assert(isProcessing != null),
        assert(showErrorMessages != null),
        assert(emailAddress != null),
        assert(authenticationOption != null),
        assert(sessionOption != null),
        assert(userOption != null),
        assert(password != null);

  @override
  final bool isProcessing;
  @override
  final bool showErrorMessages;
  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthenticationFailure, User>> authenticationOption;
  @override
  final Option<Either<SessionFailure, dynamic>> sessionOption;
  @override
  final Option<Either<UserFailure, dynamic>> userOption;
  @override
  final Password password;

  @override
  String toString() {
    return 'LogInState(isProcessing: $isProcessing, showErrorMessages: $showErrorMessages, emailAddress: $emailAddress, authenticationOption: $authenticationOption, sessionOption: $sessionOption, userOption: $userOption, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInState &&
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
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
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
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
      {@required
          bool isProcessing,
      @required
          bool showErrorMessages,
      @required
          EmailAddress emailAddress,
      @required
          Option<Either<AuthenticationFailure, User>> authenticationOption,
      @required
          Option<Either<SessionFailure, dynamic>> sessionOption,
      @required
          Option<Either<UserFailure, dynamic>> userOption,
      @required
          Password password}) = _$_LogInState;

  @override
  bool get isProcessing;
  @override
  bool get showErrorMessages;
  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, User>> get authenticationOption;
  @override
  Option<Either<SessionFailure, dynamic>> get sessionOption;
  @override
  Option<Either<UserFailure, dynamic>> get userOption;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$LogInStateCopyWith<_LogInState> get copyWith;
}
