import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required EmailAddress emailAddress,
    required UniqueID uid,
    required Username username,
  }) = _User;

  factory User.empty() => User(
        emailAddress: EmailAddress(''),
        uid: UniqueID(),
        username: Username(''),
      );
}
