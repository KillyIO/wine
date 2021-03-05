import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/core/unique_id.dart';

/// @nodoc
extension FirebaseUserDomainX on auth.User {
  /// @nodoc
  User toDomain() {
    return User(
      email: EmailAddress(email),
      uid: UniqueID.fromUniqueString(uid),
      username: Username(''),
    );
  }
}
