import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

/// @nodoc
@freezed
class AuthFailure with _$AuthFailure {
  /// @nodoc
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  /// @nodoc
  const factory AuthFailure.credentialAlreadyInUse() = CredentialAlreadyInUse;

  /// @nodoc
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// @nodoc
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;

  /// Serves as a "catch all" failure if we don't know what went wrong.
  ///
  /// Previously ServerFailure.
  const factory AuthFailure.serverError() = ServerError;

  /// @nodoc
  const factory AuthFailure.unableToSignOut() = UnableToSignOut;

  /// @nodoc
  const factory AuthFailure.unexpected() = Unexpected;
}
