import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  /// @nodoc
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  /// @nodoc
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// @nodoc
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  /// @nodoc
  const factory AuthenticationFailure.serverError() = ServerError;

  /// @nodoc
  const factory AuthenticationFailure.unableToSignOut() = UnableToSignOut;

  /// @nodoc
  const factory AuthenticationFailure.usernameAlreadyInUse() =
      UsernameAlreadyInUse;
}
