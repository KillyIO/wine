import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthenticationFailure.serverError() = ServerError;
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthenticationFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;
  const factory AuthenticationFailure.unableToSignOut() = UnableToSignOut;
}
