import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_failure.freezed.dart';

/// Collection of failures
///
/// [SessionFailure] is a collection of failures related to the User's model and
/// calls to User in database.
@freezed
abstract class SessionFailure with _$SessionFailure {
  /// @nodoc
  const factory SessionFailure.sessionNotDeleted() = SessionNotDeleted;

  /// @nodoc
  const factory SessionFailure.sessionNotFetched() = SessionNotFetched;

  /// @nodoc
  const factory SessionFailure.sessionNotInitialized() = SessionNotInitialized;

  /// @nodoc
  const factory SessionFailure.sessionNotUpdated() = SessionNotUpdated;
}
