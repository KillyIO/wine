import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthenticationFailure.serverError() = ServerError;
  const factory AuthenticationFailure.unableToSignOut() = UnableToSignOut;
  const factory AuthenticationFailure.usernameAlreadyInUse() =
      UsernameAlreadyInUse;
}
