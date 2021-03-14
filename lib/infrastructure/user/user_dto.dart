import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// @nodoc
@freezed
abstract class UserDTO with _$UserDTO {
  /// @nodoc
  factory UserDTO({
    @required String emailAddress,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    @JsonKey(ignore: true) String uid,
    @required String username,
  }) = _UserDTO;

  /// @nodoc
  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      emailAddress: user.emailAddress.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      uid: user.uid.getOrCrash(),
      username: user.username.getOrCrash(),
    );
  }

  /// @nodoc
  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  /// @nodoc
  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    return UserDTO.fromJson(doc.data()).copyWith(uid: doc.id);
  }
}

/// @nodoc
class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  /// @nodoc
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

/// @nodoc
extension UserX on auth.User {
  /// @nodoc
  User toDomain() => User(
        emailAddress: EmailAddress(email),
        uid: UniqueID.fromUniqueString(uid),
        username: Username(displayName ?? email.split('@').first),
      );
}
