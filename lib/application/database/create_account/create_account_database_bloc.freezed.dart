// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateAccountDatabaseEventTearOff {
  const _$CreateAccountDatabaseEventTearOff();

  AccountCreated accountCreated(User user) {
    return AccountCreated(
      user,
    );
  }
}

// ignore: unused_element
const $CreateAccountDatabaseEvent = _$CreateAccountDatabaseEventTearOff();

mixin _$CreateAccountDatabaseEvent {
  User get user;

  $CreateAccountDatabaseEventCopyWith<CreateAccountDatabaseEvent> get copyWith;
}

abstract class $CreateAccountDatabaseEventCopyWith<$Res> {
  factory $CreateAccountDatabaseEventCopyWith(CreateAccountDatabaseEvent value,
          $Res Function(CreateAccountDatabaseEvent) then) =
      _$CreateAccountDatabaseEventCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$CreateAccountDatabaseEventCopyWithImpl<$Res>
    implements $CreateAccountDatabaseEventCopyWith<$Res> {
  _$CreateAccountDatabaseEventCopyWithImpl(this._value, this._then);

  final CreateAccountDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(CreateAccountDatabaseEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

abstract class $AccountCreatedCopyWith<$Res>
    implements $CreateAccountDatabaseEventCopyWith<$Res> {
  factory $AccountCreatedCopyWith(
          AccountCreated value, $Res Function(AccountCreated) then) =
      _$AccountCreatedCopyWithImpl<$Res>;
  @override
  $Res call({User user});
}

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

class _$AccountCreated implements AccountCreated {
  const _$AccountCreated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'CreateAccountDatabaseEvent.accountCreated(user: $user)';
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
}

abstract class AccountCreated implements CreateAccountDatabaseEvent {
  const factory AccountCreated(User user) = _$AccountCreated;

  @override
  User get user;
  @override
  $AccountCreatedCopyWith<AccountCreated> get copyWith;
}

class _$CreateAccountDatabaseStateTearOff {
  const _$CreateAccountDatabaseStateTearOff();

  _CreateAccountDatabaseState call(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _CreateAccountDatabaseState(
      isUpdating: isUpdating,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CreateAccountDatabaseState = _$CreateAccountDatabaseStateTearOff();

mixin _$CreateAccountDatabaseState {
  bool get isUpdating;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $CreateAccountDatabaseStateCopyWith<CreateAccountDatabaseState> get copyWith;
}

abstract class $CreateAccountDatabaseStateCopyWith<$Res> {
  factory $CreateAccountDatabaseStateCopyWith(CreateAccountDatabaseState value,
          $Res Function(CreateAccountDatabaseState) then) =
      _$CreateAccountDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$CreateAccountDatabaseStateCopyWithImpl<$Res>
    implements $CreateAccountDatabaseStateCopyWith<$Res> {
  _$CreateAccountDatabaseStateCopyWithImpl(this._value, this._then);

  final CreateAccountDatabaseState _value;
  // ignore: unused_field
  final $Res Function(CreateAccountDatabaseState) _then;

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
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$CreateAccountDatabaseStateCopyWith<$Res>
    implements $CreateAccountDatabaseStateCopyWith<$Res> {
  factory _$CreateAccountDatabaseStateCopyWith(
          _CreateAccountDatabaseState value,
          $Res Function(_CreateAccountDatabaseState) then) =
      __$CreateAccountDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

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
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateAccountDatabaseState(
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_CreateAccountDatabaseState implements _CreateAccountDatabaseState {
  const _$_CreateAccountDatabaseState(
      {@required this.isUpdating,
      @required this.databaseFailureOrSuccessOption})
      : assert(isUpdating != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final bool isUpdating;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateAccountDatabaseState(isUpdating: $isUpdating, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAccountDatabaseState &&
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
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_CreateAccountDatabaseState;

  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$CreateAccountDatabaseStateCopyWith<_CreateAccountDatabaseState>
      get copyWith;
}
