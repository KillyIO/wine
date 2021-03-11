// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

// ignore: unused_element
  _UserDTO call(
      {@required String emailAddress,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid,
      @required String username}) {
    return _UserDTO(
      emailAddress: emailAddress,
      serverTimeStamp: serverTimeStamp,
      uid: uid,
      username: username,
    );
  }

// ignore: unused_element
  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  String get emailAddress;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @JsonKey(ignore: true)
  String get uid;
  String get username;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid,
      String username});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object serverTimeStamp = freezed,
    Object uid = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      uid: uid == freezed ? _value.uid : uid as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid,
      String username});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object serverTimeStamp = freezed,
    Object uid = freezed,
    Object username = freezed,
  }) {
    return _then(_UserDTO(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      uid: uid == freezed ? _value.uid : uid as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDTO implements _UserDTO {
  _$_UserDTO(
      {@required this.emailAddress,
      @required @ServerTimestampConverter() this.serverTimeStamp,
      @JsonKey(ignore: true) this.uid,
      @required this.username})
      : assert(emailAddress != null),
        assert(serverTimeStamp != null),
        assert(username != null);

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  final String emailAddress;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  final String uid;
  @override
  final String username;

  @override
  String toString() {
    return 'UserDTO(emailAddress: $emailAddress, serverTimeStamp: $serverTimeStamp, uid: $uid, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO implements UserDTO {
  factory _UserDTO(
      {@required String emailAddress,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @JsonKey(ignore: true) String uid,
      @required String username}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  String get emailAddress;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  String get uid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
