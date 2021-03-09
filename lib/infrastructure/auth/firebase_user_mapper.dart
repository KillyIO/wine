import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
@lazySingleton
class FirebaseUserMapper {
  /// @nodoc
  User toDomain(auth.User _) {
    return _ == null
        ? null
        : User(
            emailAddress: EmailAddress(_.email),
            uid: UniqueID.fromUniqueString(_.uid),
            username: Username(_.displayName),
          );
  }
}
