import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/user.dart';

part 'authentication_success.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationSuccess with _$AuthenticationSuccess {
  /// @nodoc
  const factory AuthenticationSuccess.userAuthenticated(User user) =
      UserAuthenticated;

  /// @nodoc
  const factory AuthenticationSuccess.usernameAvailable() = UsernameAvailable;

  /// I've kept ``sign in`` for consistence with
  /// ``firebase_auth`` and ``google_sign_in`` naming.
  const factory AuthenticationSuccess.userSignedInAnonymously() =
      UserSignedInAnonymously;

  /// I've kept ``sign out`` for consistence with
  /// ``firebase_auth`` and ``google_sign_in`` naming.
  const factory AuthenticationSuccess.userSignedOut() = UserSignedOut;

  /// @nodoc
  const factory AuthenticationSuccess.verificationEmailSent() =
      VerificationEmailSent;
}
