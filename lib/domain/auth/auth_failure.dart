import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.credentialAlreadyInUse() = CredentialAlreadyInUse;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;

  const factory AuthFailure.permissionDenied() = PermissionDenied;

  /// Serves as a "catch all" failure if we don't know what went wrong.
  ///
  /// Previously ServerFailure.
  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.unableToSignOut() = UnableToSignOut;

  const factory AuthFailure.unexpected() = Unexpected;
}
