import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/user.dart';

part 'authentication_success.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationSuccess with _$AuthenticationSuccess {
  /// @nodoc
  const factory AuthenticationSuccess.userAuthenticatedSuccess(User user) =
      UserAuthenticatedSuccess;

  /// @nodoc
  const factory AuthenticationSuccess.usernameAvailableSCS() =
      UsernameAvailableSCS;

  /// @nodoc
  const factory AuthenticationSuccess.userSignedInAnonymouslySCS() =
      UserSignedInAnonymouslySCS;

  /// @nodoc
  const factory AuthenticationSuccess.userSignedOutSCS() = UserSignedOutSCS;

  /// @nodoc
  const factory AuthenticationSuccess.verificationEmailSentSCS() =
      VerificationEmailSentSCS;
}
