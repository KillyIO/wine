import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/user.dart';

part 'authentication_success.freezed.dart';

@freezed
abstract class AuthenticationSuccess with _$AuthenticationSuccess {
  const factory AuthenticationSuccess.userAuthenticatedSCS(User user) = UserAuthenticatedSCS;
  const factory AuthenticationSuccess.usernameAvailableSCS() = UsernameAvailableSCS;
  const factory AuthenticationSuccess.userSignedInAnonymouslySCS() = UserSignedInAnonymouslySCS;
  const factory AuthenticationSuccess.userSignedOutSCS() = UserSignedOutSCS;
  const factory AuthenticationSuccess.verificationEmailSentSCS() = VerificationEmailSentSCS;
}
