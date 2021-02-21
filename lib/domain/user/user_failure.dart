import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

/// Collection of failures
///
/// [UserFailure] is a collection of failures related to the User's model and
/// calls to User in database.
@freezed
abstract class UserFailure with _$UserFailure {
  /// @nodoc
  const factory UserFailure.serverError() = ServerErrorr;

  /// @nodoc
  const factory UserFailure.unexpectedError() = UnexpectedError;

  /// @nodoc
  const factory UserFailure.userNotFound() = UserNotFound;
}
