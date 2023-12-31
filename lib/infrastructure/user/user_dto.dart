import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/core/converter.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  factory UserDTO({
    required String emailAddress,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required String username,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      emailAddress: user.emailAddress.getOrCrash(),
      uid: user.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      username: user.username.getOrCrash(),
    );
  }

  factory UserDTO.fromAdapter(IsarUser user) {
    return UserDTO(
      emailAddress: user.emailAddress,
      uid: user.uid,
      updatedAt: FieldValue.serverTimestamp(),
      username: user.username,
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}

extension UserDTOX on UserDTO {
  User toDomain() => User(
        emailAddress: EmailAddress(emailAddress),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(username),
      );

  IsarUser toAdapter() => IsarUser(
        emailAddress: emailAddress,
        uid: uid,
        updatedAt: DateTime.now(),
        username: username,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'emailAddress': emailAddress,
        'uid': uid,
        'username': username,
      };
}

extension UserMapX on Map<dynamic, dynamic> {
  User toDomain() => User(
        emailAddress: EmailAddress(this['emailAddress'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        username: Username(this['username'] as String),
      );
}

extension UserX on auth.User {
  User toDomain() => User(
        emailAddress: EmailAddress(email!),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(
          email!.split('@').first.trim().replaceAll(RegExp('[ -]'), '_'),
        ),
      );
}
