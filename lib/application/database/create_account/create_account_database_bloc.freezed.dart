// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateAccountDatabaseEventTearOff {
  const _$CreateAccountDatabaseEventTearOff();

// ignore: unused_element
  AccountCreated accountCreatedEVT(User user) {
    return AccountCreated(
      user,
    );
  }

// ignore: unused_element
  UserDetailsSavedEVT userDetailsSavedEVT(User user) {
    return UserDetailsSavedEVT(
      user,
    );
  }

// ignore: unused_element
  VerifyEmailPageLaunched verifyEmailPageLaunchedEVT() {
    return const VerifyEmailPageLaunched();
  }
}

/// @nodoc
// ignore: unused_element
const $CreateAccountDatabaseEvent = _$CreateAccountDatabaseEventTearOff();

/// @nodoc
mixin _$CreateAccountDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreatedEVT(User user),
    @required TResult userDetailsSavedEVT(User user),
    @required TResult verifyEmailPageLaunchedEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreatedEVT(User user),
    TResult userDetailsSavedEVT(User user),
    TResult verifyEmailPageLaunchedEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreatedEVT(AccountCreated value),
    @required TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreatedEVT(AccountCreated value),
    TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CreateAccountDatabaseEventCopyWith<$Res> {
  factory $CreateAccountDatabaseEventCopyWith(CreateAccountDatabaseEvent value,
          $Res Function(CreateAccountDatabaseEvent) then) =
      _$CreateAccountDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateAccountDatabaseEventCopyWithImpl<$Res>
    implements $CreateAccountDatabaseEventCopyWith<$Res> {
  _$CreateAccountDatabaseEventCopyWithImpl(this._value, this._then);

  final CreateAccountDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(CreateAccountDatabaseEvent) _then;
}

/// @nodoc
abstract class $AccountCreatedCopyWith<$Res> {
  factory $AccountCreatedCopyWith(
          AccountCreated value, $Res Function(AccountCreated) then) =
      _$AccountCreatedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AccountCreatedCopyWithImpl<$Res>
    extends _$CreateAccountDatabaseEventCopyWithImpl<$Res>
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
    return 'CreateAccountDatabaseEvent.accountCreatedEVT(user: $user)';
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

  @override
  $AccountCreatedCopyWith<AccountCreated> get copyWith =>
      _$AccountCreatedCopyWithImpl<AccountCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreatedEVT(User user),
    @required TResult userDetailsSavedEVT(User user),
    @required TResult verifyEmailPageLaunchedEVT(),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return accountCreatedEVT(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreatedEVT(User user),
    TResult userDetailsSavedEVT(User user),
    TResult verifyEmailPageLaunchedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountCreatedEVT != null) {
      return accountCreatedEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreatedEVT(AccountCreated value),
    @required TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return accountCreatedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreatedEVT(AccountCreated value),
    TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountCreatedEVT != null) {
      return accountCreatedEVT(this);
    }
    return orElse();
  }
}

abstract class AccountCreated implements CreateAccountDatabaseEvent {
  const factory AccountCreated(User user) = _$AccountCreated;

  User get user;
  $AccountCreatedCopyWith<AccountCreated> get copyWith;
}

/// @nodoc
abstract class $UserDetailsSavedEVTCopyWith<$Res> {
  factory $UserDetailsSavedEVTCopyWith(
          UserDetailsSavedEVT value, $Res Function(UserDetailsSavedEVT) then) =
      _$UserDetailsSavedEVTCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserDetailsSavedEVTCopyWithImpl<$Res>
    extends _$CreateAccountDatabaseEventCopyWithImpl<$Res>
    implements $UserDetailsSavedEVTCopyWith<$Res> {
  _$UserDetailsSavedEVTCopyWithImpl(
      UserDetailsSavedEVT _value, $Res Function(UserDetailsSavedEVT) _then)
      : super(_value, (v) => _then(v as UserDetailsSavedEVT));

  @override
  UserDetailsSavedEVT get _value => super._value as UserDetailsSavedEVT;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserDetailsSavedEVT(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserDetailsSavedEVT implements UserDetailsSavedEVT {
  const _$UserDetailsSavedEVT(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'CreateAccountDatabaseEvent.userDetailsSavedEVT(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetailsSavedEVT &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserDetailsSavedEVTCopyWith<UserDetailsSavedEVT> get copyWith =>
      _$UserDetailsSavedEVTCopyWithImpl<UserDetailsSavedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreatedEVT(User user),
    @required TResult userDetailsSavedEVT(User user),
    @required TResult verifyEmailPageLaunchedEVT(),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return userDetailsSavedEVT(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreatedEVT(User user),
    TResult userDetailsSavedEVT(User user),
    TResult verifyEmailPageLaunchedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedEVT != null) {
      return userDetailsSavedEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreatedEVT(AccountCreated value),
    @required TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return userDetailsSavedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreatedEVT(AccountCreated value),
    TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedEVT != null) {
      return userDetailsSavedEVT(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSavedEVT implements CreateAccountDatabaseEvent {
  const factory UserDetailsSavedEVT(User user) = _$UserDetailsSavedEVT;

  User get user;
  $UserDetailsSavedEVTCopyWith<UserDetailsSavedEVT> get copyWith;
}

/// @nodoc
abstract class $VerifyEmailPageLaunchedCopyWith<$Res> {
  factory $VerifyEmailPageLaunchedCopyWith(VerifyEmailPageLaunched value,
          $Res Function(VerifyEmailPageLaunched) then) =
      _$VerifyEmailPageLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyEmailPageLaunchedCopyWithImpl<$Res>
    extends _$CreateAccountDatabaseEventCopyWithImpl<$Res>
    implements $VerifyEmailPageLaunchedCopyWith<$Res> {
  _$VerifyEmailPageLaunchedCopyWithImpl(VerifyEmailPageLaunched _value,
      $Res Function(VerifyEmailPageLaunched) _then)
      : super(_value, (v) => _then(v as VerifyEmailPageLaunched));

  @override
  VerifyEmailPageLaunched get _value => super._value as VerifyEmailPageLaunched;
}

/// @nodoc
class _$VerifyEmailPageLaunched implements VerifyEmailPageLaunched {
  const _$VerifyEmailPageLaunched();

  @override
  String toString() {
    return 'CreateAccountDatabaseEvent.verifyEmailPageLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyEmailPageLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountCreatedEVT(User user),
    @required TResult userDetailsSavedEVT(User user),
    @required TResult verifyEmailPageLaunchedEVT(),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return verifyEmailPageLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountCreatedEVT(User user),
    TResult userDetailsSavedEVT(User user),
    TResult verifyEmailPageLaunchedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyEmailPageLaunchedEVT != null) {
      return verifyEmailPageLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountCreatedEVT(AccountCreated value),
    @required TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
  }) {
    assert(accountCreatedEVT != null);
    assert(userDetailsSavedEVT != null);
    assert(verifyEmailPageLaunchedEVT != null);
    return verifyEmailPageLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountCreatedEVT(AccountCreated value),
    TResult userDetailsSavedEVT(UserDetailsSavedEVT value),
    TResult verifyEmailPageLaunchedEVT(VerifyEmailPageLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyEmailPageLaunchedEVT != null) {
      return verifyEmailPageLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailPageLaunched implements CreateAccountDatabaseEvent {
  const factory VerifyEmailPageLaunched() = _$VerifyEmailPageLaunched;
}

/// @nodoc
class _$CreateAccountDatabaseStateTearOff {
  const _$CreateAccountDatabaseStateTearOff();

// ignore: unused_element
  _CreateAccountDatabaseState call(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, UserDatabaseSuccess>>
              userDatabaseFailureOrSuccessOption,
      @required
          String email}) {
    return _CreateAccountDatabaseState(
      isUpdating: isUpdating,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption,
      userDatabaseFailureOrSuccessOption: userDatabaseFailureOrSuccessOption,
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateAccountDatabaseState = _$CreateAccountDatabaseStateTearOff();

/// @nodoc
mixin _$CreateAccountDatabaseState {
  bool get isUpdating;
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      get userDatabaseFailureOrSuccessOption;
  String get email;

  $CreateAccountDatabaseStateCopyWith<CreateAccountDatabaseState> get copyWith;
}

/// @nodoc
abstract class $CreateAccountDatabaseStateCopyWith<$Res> {
  factory $CreateAccountDatabaseStateCopyWith(CreateAccountDatabaseState value,
          $Res Function(CreateAccountDatabaseState) then) =
      _$CreateAccountDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, UserDatabaseSuccess>>
          userDatabaseFailureOrSuccessOption,
      String email});
}

/// @nodoc
class _$CreateAccountDatabaseStateCopyWithImpl<$Res>
    implements $CreateAccountDatabaseStateCopyWith<$Res> {
  _$CreateAccountDatabaseStateCopyWithImpl(this._value, this._then);

  final CreateAccountDatabaseState _value;
  // ignore: unused_field
  final $Res Function(CreateAccountDatabaseState) _then;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object userDatabaseFailureOrSuccessOption = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      userDatabaseFailureOrSuccessOption:
          userDatabaseFailureOrSuccessOption == freezed
              ? _value.userDatabaseFailureOrSuccessOption
              : userDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, UserDatabaseSuccess>>,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateAccountDatabaseStateCopyWith<$Res>
    implements $CreateAccountDatabaseStateCopyWith<$Res> {
  factory _$CreateAccountDatabaseStateCopyWith(
          _CreateAccountDatabaseState value,
          $Res Function(_CreateAccountDatabaseState) then) =
      __$CreateAccountDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, UserDatabaseSuccess>>
          userDatabaseFailureOrSuccessOption,
      String email});
}

/// @nodoc
class __$CreateAccountDatabaseStateCopyWithImpl<$Res>
    extends _$CreateAccountDatabaseStateCopyWithImpl<$Res>
    implements _$CreateAccountDatabaseStateCopyWith<$Res> {
  __$CreateAccountDatabaseStateCopyWithImpl(_CreateAccountDatabaseState _value,
      $Res Function(_CreateAccountDatabaseState) _then)
      : super(_value, (v) => _then(v as _CreateAccountDatabaseState));

  @override
  _CreateAccountDatabaseState get _value =>
      super._value as _CreateAccountDatabaseState;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object userDatabaseFailureOrSuccessOption = freezed,
    Object email = freezed,
  }) {
    return _then(_CreateAccountDatabaseState(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      userDatabaseFailureOrSuccessOption:
          userDatabaseFailureOrSuccessOption == freezed
              ? _value.userDatabaseFailureOrSuccessOption
              : userDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, UserDatabaseSuccess>>,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_CreateAccountDatabaseState implements _CreateAccountDatabaseState {
  const _$_CreateAccountDatabaseState(
      {@required this.isUpdating,
      @required this.sessionDatabaseFailureOrSuccessOption,
      @required this.userDatabaseFailureOrSuccessOption,
      @required this.email})
      : assert(isUpdating != null),
        assert(sessionDatabaseFailureOrSuccessOption != null),
        assert(userDatabaseFailureOrSuccessOption != null),
        assert(email != null);

  @override
  final bool isUpdating;
  @override
  final Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      sessionDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      userDatabaseFailureOrSuccessOption;
  @override
  final String email;

  @override
  String toString() {
    return 'CreateAccountDatabaseState(isUpdating: $isUpdating, sessionDatabaseFailureOrSuccessOption: $sessionDatabaseFailureOrSuccessOption, userDatabaseFailureOrSuccessOption: $userDatabaseFailureOrSuccessOption, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAccountDatabaseState &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption)) &&
            (identical(other.userDatabaseFailureOrSuccessOption,
                    userDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.userDatabaseFailureOrSuccessOption,
                    userDatabaseFailureOrSuccessOption)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality()
          .hash(sessionDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(userDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$CreateAccountDatabaseStateCopyWith<_CreateAccountDatabaseState>
      get copyWith => __$CreateAccountDatabaseStateCopyWithImpl<
          _CreateAccountDatabaseState>(this, _$identity);
}

abstract class _CreateAccountDatabaseState
    implements CreateAccountDatabaseState {
  const factory _CreateAccountDatabaseState(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, UserDatabaseSuccess>>
              userDatabaseFailureOrSuccessOption,
      @required
          String email}) = _$_CreateAccountDatabaseState;

  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      get userDatabaseFailureOrSuccessOption;
  @override
  String get email;
  @override
  _$CreateAccountDatabaseStateCopyWith<_CreateAccountDatabaseState>
      get copyWith;
}
