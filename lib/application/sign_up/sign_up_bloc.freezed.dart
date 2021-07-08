// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  AccountCreated accountCreated(User user) {
    return AccountCreated(
      user,
    );
  }

  ConfirmPasswordChanged confirmPasswordChanged(
      String confirmPasswordStr, String passwordStr) {
    return ConfirmPasswordChanged(
      confirmPasswordStr,
      passwordStr,
    );
  }

  EmailChanged emailChanged(String emailAddressStr) {
    return EmailChanged(
      emailAddressStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  SignUpPressed signUpPressed() {
    return const SignUpPressed();
  }

  UserDetailsSaved userDetailsSaved(User user) {
    return UserDetailsSaved(
      user,
    );
  }

  UsernameAvailabilityConfirmed usernameAvailabilityConfirmed() {
    return const UsernameAvailabilityConfirmed();
  }

  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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

  $UserCopyWith<$Res> get user;
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
    Object? user = freezed,
  }) {
    return _then(AccountCreated(
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

class _$AccountCreated implements AccountCreated {
  const _$AccountCreated(this.user);

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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return accountCreated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (accountCreated != null) {
      return accountCreated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return accountCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (accountCreated != null) {
      return accountCreated(this);
    }
    return orElse();
  }
}

abstract class AccountCreated implements SignUpEvent {
  const factory AccountCreated(User user) = _$AccountCreated;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCreatedCopyWith<AccountCreated> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? confirmPasswordStr = freezed,
    Object? passwordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr, this.passwordStr);

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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return confirmPasswordChanged(confirmPasswordStr, passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr, passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpEvent {
  const factory ConfirmPasswordChanged(
      String confirmPasswordStr, String passwordStr) = _$ConfirmPasswordChanged;

  String get confirmPasswordStr => throw _privateConstructorUsedError;
  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailAddressStr});
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
    Object? emailAddressStr = freezed,
  }) {
    return _then(EmailChanged(
      emailAddressStr == freezed
          ? _value.emailAddressStr
          : emailAddressStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailAddressStr);

  @override
  final String emailAddressStr;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(emailAddressStr: $emailAddressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
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
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return emailChanged(emailAddressStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailAddressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String emailAddressStr) = _$EmailChanged;

  String get emailAddressStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
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
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
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

  $UserCopyWith<$Res> get user;
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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return userDetailsSaved(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
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
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return userDetailsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (userDetailsSaved != null) {
      return userDetailsSaved(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSaved implements SignUpEvent {
  const factory UserDetailsSaved(User user) = _$UserDetailsSaved;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsSavedCopyWith<UserDetailsSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameAvailabilityConfirmedCopyWith<$Res> {
  factory $UsernameAvailabilityConfirmedCopyWith(
          UsernameAvailabilityConfirmed value,
          $Res Function(UsernameAvailabilityConfirmed) then) =
      _$UsernameAvailabilityConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameAvailabilityConfirmedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UsernameAvailabilityConfirmedCopyWith<$Res> {
  _$UsernameAvailabilityConfirmedCopyWithImpl(
      UsernameAvailabilityConfirmed _value,
      $Res Function(UsernameAvailabilityConfirmed) _then)
      : super(_value, (v) => _then(v as UsernameAvailabilityConfirmed));

  @override
  UsernameAvailabilityConfirmed get _value =>
      super._value as UsernameAvailabilityConfirmed;
}

/// @nodoc

class _$UsernameAvailabilityConfirmed implements UsernameAvailabilityConfirmed {
  const _$UsernameAvailabilityConfirmed();

  @override
  String toString() {
    return 'SignUpEvent.usernameAvailabilityConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAvailabilityConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return usernameAvailabilityConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (usernameAvailabilityConfirmed != null) {
      return usernameAvailabilityConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return usernameAvailabilityConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (usernameAvailabilityConfirmed != null) {
      return usernameAvailabilityConfirmed(this);
    }
    return orElse();
  }
}

abstract class UsernameAvailabilityConfirmed implements SignUpEvent {
  const factory UsernameAvailabilityConfirmed() =
      _$UsernameAvailabilityConfirmed;
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
    Object? usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr);

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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) accountCreated,
    required TResult Function(String confirmPasswordStr, String passwordStr)
        confirmPasswordChanged,
    required TResult Function(String emailAddressStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signUpPressed,
    required TResult Function(User user) userDetailsSaved,
    required TResult Function() usernameAvailabilityConfirmed,
    required TResult Function(String usernameStr) usernameChanged,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? accountCreated,
    TResult Function(String confirmPasswordStr, String passwordStr)?
        confirmPasswordChanged,
    TResult Function(String emailAddressStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signUpPressed,
    TResult Function(User user)? userDetailsSaved,
    TResult Function()? usernameAvailabilityConfirmed,
    TResult Function(String usernameStr)? usernameChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountCreated value) accountCreated,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(UserDetailsSaved value) userDetailsSaved,
    required TResult Function(UsernameAvailabilityConfirmed value)
        usernameAvailabilityConfirmed,
    required TResult Function(UsernameChanged value) usernameChanged,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountCreated value)? accountCreated,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(UserDetailsSaved value)? userDetailsSaved,
    TResult Function(UsernameAvailabilityConfirmed value)?
        usernameAvailabilityConfirmed,
    TResult Function(UsernameChanged value)? usernameChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required ConfirmPassword confirmPassword,
      required EmailAddress emailAddress,
      required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isProcessing,
      required Password password,
      required bool showErrorMessages,
      required Username username}) {
    return _SignUpState(
      confirmPassword: confirmPassword,
      emailAddress: emailAddress,
      failureOption: failureOption,
      isProcessing: isProcessing,
      password: password,
      showErrorMessages: showErrorMessages,
      username: username,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {ConfirmPassword confirmPassword,
      EmailAddress emailAddress,
      Option<Result<dynamic, CoreFailure>> failureOption,
      bool isProcessing,
      Password password,
      bool showErrorMessages,
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
    Object? confirmPassword = freezed,
    Object? emailAddress = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
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
      {ConfirmPassword confirmPassword,
      EmailAddress emailAddress,
      Option<Result<dynamic, CoreFailure>> failureOption,
      bool isProcessing,
      Password password,
      bool showErrorMessages,
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
    Object? confirmPassword = freezed,
    Object? emailAddress = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? username = freezed,
  }) {
    return _then(_SignUpState(
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<dynamic, CoreFailure>>,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.confirmPassword,
      required this.emailAddress,
      required this.failureOption,
      required this.isProcessing,
      required this.password,
      required this.showErrorMessages,
      required this.username});

  @override
  final ConfirmPassword confirmPassword;
  @override
  final EmailAddress emailAddress;
  @override
  final Option<Result<dynamic, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final Username username;

  @override
  String toString() {
    return 'SignUpState(confirmPassword: $confirmPassword, emailAddress: $emailAddress, failureOption: $failureOption, isProcessing: $isProcessing, password: $password, showErrorMessages: $showErrorMessages, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(failureOption) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required ConfirmPassword confirmPassword,
      required EmailAddress emailAddress,
      required Option<Result<dynamic, CoreFailure>> failureOption,
      required bool isProcessing,
      required Password password,
      required bool showErrorMessages,
      required Username username}) = _$_SignUpState;

  @override
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Option<Result<dynamic, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
