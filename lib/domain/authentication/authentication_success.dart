import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'authentication_success.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationSuccess with _$AuthenticationSuccess {
  /// @nodoc
  const factory AuthenticationSuccess.userAuthenticatedSuccess(User user) =
      UserAuthenticatedSuccess;

  /// @nodoc
  const factory AuthenticationSuccess.usernameAvailableSuccess() =
      UsernameAvailableSuccess;

  /// @nodoc
  const factory AuthenticationSuccess.userSignedInAnonymouslySuccess() =
      UserSignedInAnonymouslySuccess;

  /// @nodoc
  const factory AuthenticationSuccess.userSignedOutSuccess() =
      UserSignedOutSuccess;

  /// @nodoc
  const factory AuthenticationSuccess.verificationEmailSentSuccess() =
      VerificationEmailSentSuccess;
}
