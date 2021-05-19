import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/core/converter.dart';
import 'package:wine/infrastructure/user/hive_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// @nodoc
@freezed
class UserDTO with _$UserDTO {
  /// @nodoc
  factory UserDTO({
    required String emailAddress,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required String username,
  }) = _UserDTO;

  /// @nodoc
  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      emailAddress: user.emailAddress.getOrCrash(),
      uid: user.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      username: user.username.getOrCrash(),
    );
  }

  /// @nodoc
  factory UserDTO.fromAdapter(HiveUser user) {
    return UserDTO(
      emailAddress: user.emailAddress,
      uid: user.uid,
      updatedAt: FieldValue.serverTimestamp(),
      username: user.username,
    );
  }

  /// @nodoc
  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}

/// @nodoc
extension UserDTOX on UserDTO {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(emailAddress),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(username),
      );

  /// @nodoc
  HiveUser toAdapter() => HiveUser(
        emailAddress: emailAddress,
        uid: uid,
        username: username,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'emailAddress': emailAddress,
        'uid': uid,
        'username': username,
      };
}

/// @nodoc
extension UserMapX on Map {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(this['emailAddress']),
        uid: UniqueID.fromUniqueString(this['uid']),
        username: Username(this['username']),
      );
}

/// @nodoc
extension UserX on auth.User {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(email!),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(email!.split('@').first),
      );
}
