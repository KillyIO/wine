// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInDatabaseEventTearOff {
  const _$SignInDatabaseEventTearOff();

// ignore: unused_element
  SignedInEVT signedInEVT(User user) {
    return SignedInEVT(
      user,
    );
  }

// ignore: unused_element
  UserDetailsSavedEVT userDetailsSavedEVT(User user) {
    return UserDetailsSavedEVT(
      user,
    );
  }
}

// ignore: unused_element
const $SignInDatabaseEvent = _$SignInDatabaseEventTearOff();

mixin _$SignInDatabaseEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signedInEVT(User user),
    @required Result userDetailsSavedEVT(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedInEVT(User user),
    Result userDetailsSavedEVT(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedInEVT(SignedInEVT value),
    @required Result userDetailsSavedEVT(UserDetailsSavedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedInEVT(SignedInEVT value),
    Result userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required Result orElse(),
  });

  $SignInDatabaseEventCopyWith<SignInDatabaseEvent> get copyWith;
}

abstract class $SignInDatabaseEventCopyWith<$Res> {
  factory $SignInDatabaseEventCopyWith(
          SignInDatabaseEvent value, $Res Function(SignInDatabaseEvent) then) =
      _$SignInDatabaseEventCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$SignInDatabaseEventCopyWithImpl<$Res>
    implements $SignInDatabaseEventCopyWith<$Res> {
  _$SignInDatabaseEventCopyWithImpl(this._value, this._then);

  final SignInDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SignInDatabaseEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

abstract class $SignedInEVTCopyWith<$Res>
    implements $SignInDatabaseEventCopyWith<$Res> {
  factory $SignedInEVTCopyWith(
          SignedInEVT value, $Res Function(SignedInEVT) then) =
      _$SignedInEVTCopyWithImpl<$Res>;
  @override
  $Res call({User user});
}

class _$SignedInEVTCopyWithImpl<$Res>
    extends _$SignInDatabaseEventCopyWithImpl<$Res>
    implements $SignedInEVTCopyWith<$Res> {
  _$SignedInEVTCopyWithImpl(
      SignedInEVT _value, $Res Function(SignedInEVT) _then)
      : super(_value, (v) => _then(v as SignedInEVT));

  @override
  SignedInEVT get _value => super._value as SignedInEVT;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignedInEVT(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$SignedInEVT implements SignedInEVT {
  const _$SignedInEVT(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SignInDatabaseEvent.signedInEVT(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedInEVT &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignedInEVTCopyWith<SignedInEVT> get copyWith =>
      _$SignedInEVTCopyWithImpl<SignedInEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signedInEVT(User user),
    @required Result userDetailsSavedEVT(User user),
  }) {
    assert(signedInEVT != null);
    assert(userDetailsSavedEVT != null);
    return signedInEVT(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedInEVT(User user),
    Result userDetailsSavedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedInEVT != null) {
      return signedInEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedInEVT(SignedInEVT value),
    @required Result userDetailsSavedEVT(UserDetailsSavedEVT value),
  }) {
    assert(signedInEVT != null);
    assert(userDetailsSavedEVT != null);
    return signedInEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedInEVT(SignedInEVT value),
    Result userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedInEVT != null) {
      return signedInEVT(this);
    }
    return orElse();
  }
}

abstract class SignedInEVT implements SignInDatabaseEvent {
  const factory SignedInEVT(User user) = _$SignedInEVT;

  @override
  User get user;
  @override
  $SignedInEVTCopyWith<SignedInEVT> get copyWith;
}

abstract class $UserDetailsSavedEVTCopyWith<$Res>
    implements $SignInDatabaseEventCopyWith<$Res> {
  factory $UserDetailsSavedEVTCopyWith(
          UserDetailsSavedEVT value, $Res Function(UserDetailsSavedEVT) then) =
      _$UserDetailsSavedEVTCopyWithImpl<$Res>;
  @override
  $Res call({User user});
}

class _$UserDetailsSavedEVTCopyWithImpl<$Res>
    extends _$SignInDatabaseEventCopyWithImpl<$Res>
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

class _$UserDetailsSavedEVT implements UserDetailsSavedEVT {
  const _$UserDetailsSavedEVT(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SignInDatabaseEvent.userDetailsSavedEVT(user: $user)';
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
  Result when<Result extends Object>({
    @required Result signedInEVT(User user),
    @required Result userDetailsSavedEVT(User user),
  }) {
    assert(signedInEVT != null);
    assert(userDetailsSavedEVT != null);
    return userDetailsSavedEVT(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedInEVT(User user),
    Result userDetailsSavedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedEVT != null) {
      return userDetailsSavedEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedInEVT(SignedInEVT value),
    @required Result userDetailsSavedEVT(UserDetailsSavedEVT value),
  }) {
    assert(signedInEVT != null);
    assert(userDetailsSavedEVT != null);
    return userDetailsSavedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedInEVT(SignedInEVT value),
    Result userDetailsSavedEVT(UserDetailsSavedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedEVT != null) {
      return userDetailsSavedEVT(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSavedEVT implements SignInDatabaseEvent {
  const factory UserDetailsSavedEVT(User user) = _$UserDetailsSavedEVT;

  @override
  User get user;
  @override
  $UserDetailsSavedEVTCopyWith<UserDetailsSavedEVT> get copyWith;
}

class _$SignInDatabaseStateTearOff {
  const _$SignInDatabaseStateTearOff();

// ignore: unused_element
  _SignInDatabaseState call(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) {
    return _SignInDatabaseState(
      isUpdating: isUpdating,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInDatabaseState = _$SignInDatabaseStateTearOff();

mixin _$SignInDatabaseState {
  bool get isUpdating;
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;

  $SignInDatabaseStateCopyWith<SignInDatabaseState> get copyWith;
}

abstract class $SignInDatabaseStateCopyWith<$Res> {
  factory $SignInDatabaseStateCopyWith(
          SignInDatabaseState value, $Res Function(SignInDatabaseState) then) =
      _$SignInDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

class _$SignInDatabaseStateCopyWithImpl<$Res>
    implements $SignInDatabaseStateCopyWith<$Res> {
  _$SignInDatabaseStateCopyWithImpl(this._value, this._then);

  final SignInDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SignInDatabaseState) _then;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

abstract class _$SignInDatabaseStateCopyWith<$Res>
    implements $SignInDatabaseStateCopyWith<$Res> {
  factory _$SignInDatabaseStateCopyWith(_SignInDatabaseState value,
          $Res Function(_SignInDatabaseState) then) =
      __$SignInDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

class __$SignInDatabaseStateCopyWithImpl<$Res>
    extends _$SignInDatabaseStateCopyWithImpl<$Res>
    implements _$SignInDatabaseStateCopyWith<$Res> {
  __$SignInDatabaseStateCopyWithImpl(
      _SignInDatabaseState _value, $Res Function(_SignInDatabaseState) _then)
      : super(_value, (v) => _then(v as _SignInDatabaseState));

  @override
  _SignInDatabaseState get _value => super._value as _SignInDatabaseState;

  @override
  $Res call({
    Object isUpdating = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInDatabaseState(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

class _$_SignInDatabaseState implements _SignInDatabaseState {
  const _$_SignInDatabaseState(
      {@required this.isUpdating,
      @required this.databaseFailureOrSuccessOption})
      : assert(isUpdating != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final bool isUpdating;
  @override
  final Option<Either<DatabaseFailure, DatabaseSuccess>>
      databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInDatabaseState(isUpdating: $isUpdating, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInDatabaseState &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$SignInDatabaseStateCopyWith<_SignInDatabaseState> get copyWith =>
      __$SignInDatabaseStateCopyWithImpl<_SignInDatabaseState>(
          this, _$identity);
}

abstract class _SignInDatabaseState implements SignInDatabaseState {
  const factory _SignInDatabaseState(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) = _$_SignInDatabaseState;

  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  @override
  _$SignInDatabaseStateCopyWith<_SignInDatabaseState> get copyWith;
}
