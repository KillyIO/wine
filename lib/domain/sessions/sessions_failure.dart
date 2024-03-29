import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_failure.freezed.dart';

/// Collection of failures
///
/// [SessionsFailure] is a collection of failures related to the User's model
/// and calls to User in database.
@freezed
class SessionsFailure with _$SessionsFailure {
  const factory SessionsFailure.sessionNotDeleted() = SessionNotDeleted;

  const factory SessionsFailure.sessionNotFound() = SessionNotFound;

  const factory SessionsFailure.sessionNotInserted() = SessionNotInserted;
}
