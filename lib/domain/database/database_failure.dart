import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class DatabaseFailure with _$DatabaseFailure {
  // NOTE ONLINE DATA
  /// @nodoc
  const factory DatabaseFailure.failedToCreateOnlineData() =
      FailedToCreateOnlineData;

  /// @nodoc
  const factory DatabaseFailure.failedToLoadOnlineData() =
      FailedToLoadOnlineData;

  /// @nodoc
  const factory DatabaseFailure.failedToUpdateOnlineData() =
      FailedToUpdateOnlineData;

  /// @nodoc
  const factory DatabaseFailure.failedToDeleteOnlineData() =
      FailedToDeleteOnlineData;

  /// @nodoc
  const factory DatabaseFailure.insufficientPermissions() =
      InsufficientPermissions;

  /// @nodoc
  const factory DatabaseFailure.unexpected() = Unexpected;

  // NOTE LOCAL DATA
  /// @nodoc
  const factory DatabaseFailure.failedToCreateLocalData() =
      FailedToCreateLocalData;

  /// @nodoc
  const factory DatabaseFailure.failedToFetchLocalData() =
      FailedToFetchLocalData;

  /// @nodoc
  const factory DatabaseFailure.failedToUpdateLocalData() =
      FailedToUpdateLocalData;

  /// @nodoc
  const factory DatabaseFailure.failedToDeleteLocalData() =
      FailedToDeleteLocalData;
}
