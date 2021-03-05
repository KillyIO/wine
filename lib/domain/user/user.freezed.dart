// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required EmailAddress email,
      @required UniqueID uid,
      @required Username username}) {
    return _User(
      email: email,
      uid: uid,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  EmailAddress get email;
  UniqueID get uid;
  Username get username;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({EmailAddress email, UniqueID uid, Username username});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object email = freezed,
    Object uid = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({EmailAddress email, UniqueID uid, Username username});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object email = freezed,
    Object uid = freezed,
    Object username = freezed,
  }) {
    return _then(_User(
      email: email == freezed ? _value.email : email as EmailAddress,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
      username: username == freezed ? _value.username : username as Username,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  _$_User({@required this.email, @required this.uid, @required this.username})
      : assert(email != null),
        assert(uid != null),
        assert(username != null);

  @override
  final EmailAddress email;
  @override
  final UniqueID uid;
  @override
  final Username username;

  @override
  String toString() {
    return 'User(email: $email, uid: $uid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  factory _User(
      {@required EmailAddress email,
      @required UniqueID uid,
      @required Username username}) = _$_User;

  @override
  EmailAddress get email;
  @override
  UniqueID get uid;
  @override
  Username get username;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
