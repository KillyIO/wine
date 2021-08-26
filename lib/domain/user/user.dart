import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'user.freezed.dart';

/// @nodoc
@freezed
class User with _$User {
  /// @nodoc
  factory User({
    required EmailAddress emailAddress,
    required UniqueID uid,
    required Username username,
  }) = _User;

  /// @nodoc
  factory User.empty() => User(
        emailAddress: EmailAddress(''),
        uid: UniqueID(),
        username: Username(''),
      );
}
