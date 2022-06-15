import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/core/converter.infrastructure.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';
import 'package:wine/features/user/isar_user.infrastructure.dart';
import 'package:wine/features/user/user.domain.dart';

part 'user_dto.infrastructure.freezed.dart';
part 'user_dto.infrastructure.g.dart';

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
  factory UserDTO.fromAdapter(IsarUser user) {
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
  IsarUser toAdapter() => IsarUser(
        emailAddress: emailAddress,
        uid: uid,
        updatedAt: DateTime.now(),
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
extension UserMapX on Map<dynamic, dynamic> {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(this['emailAddress'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        username: Username(this['username'] as String),
      );
}

/// @nodoc
extension UserX on auth.User {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(email!),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(
          email!.split('@').first.trim().replaceAll(RegExp('[ -]'), '_'),
        ),
      );
}
