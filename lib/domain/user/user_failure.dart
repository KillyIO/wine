import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

/// Collection of failures
///
/// [UserFailure] is a collection of failures related to the User's model and
/// calls to User in database.
@freezed
class UserFailure with _$UserFailure {
  /// @nodoc
  const factory UserFailure.serverError() = ServerError;

  /// @nodoc
  const factory UserFailure.unexpected() = Unexpected;

  /// @nodoc
  const factory UserFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;

  /// @nodoc
  const factory UserFailure.userNotFound() = UserNotFound;
}
