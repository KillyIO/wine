import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';

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
