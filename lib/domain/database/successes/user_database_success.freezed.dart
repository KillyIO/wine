// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_database_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDatabaseSuccessTearOff {
  const _$UserDatabaseSuccessTearOff();

// ignore: unused_element
  UserDetailsSavedSuccess userDetailsSavedSuccess(User user) {
    return UserDetailsSavedSuccess(
      user,
    );
  }

// ignore: unused_element
  UserLoadedSuccess userLoadedSuccess(User user) {
    return UserLoadedSuccess(
      user,
    );
  }

// ignore: unused_element
  UsernameSavedSuccess usernameSavedSuccess(String username) {
    return UsernameSavedSuccess(
      username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDatabaseSuccess = _$UserDatabaseSuccessTearOff();

/// @nodoc
mixin _$UserDatabaseSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(User user),
    @required TResult userLoadedSuccess(User user),
    @required TResult usernameSavedSuccess(String username),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userDetailsSavedSuccess(User user),
    TResult userLoadedSuccess(User user),
    TResult usernameSavedSuccess(String username),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    @required TResult userLoadedSuccess(UserLoadedSuccess value),
    @required TResult usernameSavedSuccess(UsernameSavedSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    TResult userLoadedSuccess(UserLoadedSuccess value),
    TResult usernameSavedSuccess(UsernameSavedSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserDatabaseSuccessCopyWith<$Res> {
  factory $UserDatabaseSuccessCopyWith(
          UserDatabaseSuccess value, $Res Function(UserDatabaseSuccess) then) =
      _$UserDatabaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDatabaseSuccessCopyWithImpl<$Res>
    implements $UserDatabaseSuccessCopyWith<$Res> {
  _$UserDatabaseSuccessCopyWithImpl(this._value, this._then);

  final UserDatabaseSuccess _value;
  // ignore: unused_field
  final $Res Function(UserDatabaseSuccess) _then;
}

/// @nodoc
abstract class $UserDetailsSavedSuccessCopyWith<$Res> {
  factory $UserDetailsSavedSuccessCopyWith(UserDetailsSavedSuccess value,
          $Res Function(UserDetailsSavedSuccess) then) =
      _$UserDetailsSavedSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserDetailsSavedSuccessCopyWithImpl<$Res>
    extends _$UserDatabaseSuccessCopyWithImpl<$Res>
    implements $UserDetailsSavedSuccessCopyWith<$Res> {
  _$UserDetailsSavedSuccessCopyWithImpl(UserDetailsSavedSuccess _value,
      $Res Function(UserDetailsSavedSuccess) _then)
      : super(_value, (v) => _then(v as UserDetailsSavedSuccess));

  @override
  UserDetailsSavedSuccess get _value => super._value as UserDetailsSavedSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserDetailsSavedSuccess(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserDetailsSavedSuccess implements UserDetailsSavedSuccess {
  const _$UserDetailsSavedSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserDatabaseSuccess.userDetailsSavedSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetailsSavedSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserDetailsSavedSuccessCopyWith<UserDetailsSavedSuccess> get copyWith =>
      _$UserDetailsSavedSuccessCopyWithImpl<UserDetailsSavedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(User user),
    @required TResult userLoadedSuccess(User user),
    @required TResult usernameSavedSuccess(String username),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return userDetailsSavedSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userDetailsSavedSuccess(User user),
    TResult userLoadedSuccess(User user),
    TResult usernameSavedSuccess(String username),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedSuccess != null) {
      return userDetailsSavedSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    @required TResult userLoadedSuccess(UserLoadedSuccess value),
    @required TResult usernameSavedSuccess(UsernameSavedSuccess value),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return userDetailsSavedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    TResult userLoadedSuccess(UserLoadedSuccess value),
    TResult usernameSavedSuccess(UsernameSavedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDetailsSavedSuccess != null) {
      return userDetailsSavedSuccess(this);
    }
    return orElse();
  }
}

abstract class UserDetailsSavedSuccess implements UserDatabaseSuccess {
  const factory UserDetailsSavedSuccess(User user) = _$UserDetailsSavedSuccess;

  User get user;
  @JsonKey(ignore: true)
  $UserDetailsSavedSuccessCopyWith<UserDetailsSavedSuccess> get copyWith;
}

/// @nodoc
abstract class $UserLoadedSuccessCopyWith<$Res> {
  factory $UserLoadedSuccessCopyWith(
          UserLoadedSuccess value, $Res Function(UserLoadedSuccess) then) =
      _$UserLoadedSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserLoadedSuccessCopyWithImpl<$Res>
    extends _$UserDatabaseSuccessCopyWithImpl<$Res>
    implements $UserLoadedSuccessCopyWith<$Res> {
  _$UserLoadedSuccessCopyWithImpl(
      UserLoadedSuccess _value, $Res Function(UserLoadedSuccess) _then)
      : super(_value, (v) => _then(v as UserLoadedSuccess));

  @override
  UserLoadedSuccess get _value => super._value as UserLoadedSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoadedSuccess(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserLoadedSuccess implements UserLoadedSuccess {
  const _$UserLoadedSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserDatabaseSuccess.userLoadedSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoadedSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedSuccessCopyWith<UserLoadedSuccess> get copyWith =>
      _$UserLoadedSuccessCopyWithImpl<UserLoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(User user),
    @required TResult userLoadedSuccess(User user),
    @required TResult usernameSavedSuccess(String username),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return userLoadedSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userDetailsSavedSuccess(User user),
    TResult userLoadedSuccess(User user),
    TResult usernameSavedSuccess(String username),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoadedSuccess != null) {
      return userLoadedSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    @required TResult userLoadedSuccess(UserLoadedSuccess value),
    @required TResult usernameSavedSuccess(UsernameSavedSuccess value),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return userLoadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    TResult userLoadedSuccess(UserLoadedSuccess value),
    TResult usernameSavedSuccess(UsernameSavedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoadedSuccess != null) {
      return userLoadedSuccess(this);
    }
    return orElse();
  }
}

abstract class UserLoadedSuccess implements UserDatabaseSuccess {
  const factory UserLoadedSuccess(User user) = _$UserLoadedSuccess;

  User get user;
  @JsonKey(ignore: true)
  $UserLoadedSuccessCopyWith<UserLoadedSuccess> get copyWith;
}

/// @nodoc
abstract class $UsernameSavedSuccessCopyWith<$Res> {
  factory $UsernameSavedSuccessCopyWith(UsernameSavedSuccess value,
          $Res Function(UsernameSavedSuccess) then) =
      _$UsernameSavedSuccessCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameSavedSuccessCopyWithImpl<$Res>
    extends _$UserDatabaseSuccessCopyWithImpl<$Res>
    implements $UsernameSavedSuccessCopyWith<$Res> {
  _$UsernameSavedSuccessCopyWithImpl(
      UsernameSavedSuccess _value, $Res Function(UsernameSavedSuccess) _then)
      : super(_value, (v) => _then(v as UsernameSavedSuccess));

  @override
  UsernameSavedSuccess get _value => super._value as UsernameSavedSuccess;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UsernameSavedSuccess(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UsernameSavedSuccess implements UsernameSavedSuccess {
  const _$UsernameSavedSuccess(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'UserDatabaseSuccess.usernameSavedSuccess(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameSavedSuccess &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $UsernameSavedSuccessCopyWith<UsernameSavedSuccess> get copyWith =>
      _$UsernameSavedSuccessCopyWithImpl<UsernameSavedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(User user),
    @required TResult userLoadedSuccess(User user),
    @required TResult usernameSavedSuccess(String username),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return usernameSavedSuccess(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userDetailsSavedSuccess(User user),
    TResult userLoadedSuccess(User user),
    TResult usernameSavedSuccess(String username),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameSavedSuccess != null) {
      return usernameSavedSuccess(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    @required TResult userLoadedSuccess(UserLoadedSuccess value),
    @required TResult usernameSavedSuccess(UsernameSavedSuccess value),
  }) {
    assert(userDetailsSavedSuccess != null);
    assert(userLoadedSuccess != null);
    assert(usernameSavedSuccess != null);
    return usernameSavedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userDetailsSavedSuccess(UserDetailsSavedSuccess value),
    TResult userLoadedSuccess(UserLoadedSuccess value),
    TResult usernameSavedSuccess(UsernameSavedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameSavedSuccess != null) {
      return usernameSavedSuccess(this);
    }
    return orElse();
  }
}

abstract class UsernameSavedSuccess implements UserDatabaseSuccess {
  const factory UsernameSavedSuccess(String username) = _$UsernameSavedSuccess;

  String get username;
  @JsonKey(ignore: true)
  $UsernameSavedSuccessCopyWith<UsernameSavedSuccess> get copyWith;
}
