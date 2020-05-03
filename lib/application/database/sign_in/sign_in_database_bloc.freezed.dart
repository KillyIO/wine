// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInDatabaseEventTearOff {
  const _$SignInDatabaseEventTearOff();

  SignedIn signedIn(User user) {
    return SignedIn(
      user,
    );
  }
}

// ignore: unused_element
const $SignInDatabaseEvent = _$SignInDatabaseEventTearOff();

mixin _$SignInDatabaseEvent {
  User get user;

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

abstract class $SignedInCopyWith<$Res>
    implements $SignInDatabaseEventCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
  @override
  $Res call({User user});
}

class _$SignedInCopyWithImpl<$Res>
    extends _$SignInDatabaseEventCopyWithImpl<$Res>
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

class _$SignedIn implements SignedIn {
  const _$SignedIn(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SignInDatabaseEvent.signedIn(user: $user)';
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

  @override
  $SignedInCopyWith<SignedIn> get copyWith =>
      _$SignedInCopyWithImpl<SignedIn>(this, _$identity);
}

abstract class SignedIn implements SignInDatabaseEvent {
  const factory SignedIn(User user) = _$SignedIn;

  @override
  User get user;
  @override
  $SignedInCopyWith<SignedIn> get copyWith;
}

class _$SignInDatabaseStateTearOff {
  const _$SignInDatabaseStateTearOff();

  _SignInDatabaseState call(
      {@required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, dynamic>>
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
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $SignInDatabaseStateCopyWith<SignInDatabaseState> get copyWith;
}

abstract class $SignInDatabaseStateCopyWith<$Res> {
  factory $SignInDatabaseStateCopyWith(
          SignInDatabaseState value, $Res Function(SignInDatabaseState) then) =
      _$SignInDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isUpdating,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
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
              as Option<Either<DatabaseFailure, dynamic>>,
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
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
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
              as Option<Either<DatabaseFailure, dynamic>>,
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
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

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
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_SignInDatabaseState;

  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$SignInDatabaseStateCopyWith<_SignInDatabaseState> get copyWith;
}
