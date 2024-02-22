import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

/// Collection of failures
///
/// [UserFailure] is a collection of failures related to the User's model and
/// calls to User in database.
@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.permissionDenied() = PermissionDenied;

  const factory UserFailure.serverError() = ServerError;

  const factory UserFailure.unexpected() = Unexpected;

  const factory UserFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;

  const factory UserFailure.userNotFound() = UserNotFound;
}
