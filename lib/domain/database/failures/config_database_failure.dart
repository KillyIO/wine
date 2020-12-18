import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseFailure with _$ConfigDatabaseFailure {
  /// @nodoc
  const factory ConfigDatabaseFailure.failedToDeleteConfigFLR() =
      FailedToDeleteConfigFLR;

  /// @nodoc
  const factory ConfigDatabaseFailure.failedToFetchConfigFLR() =
      FailedToFetchConfigFLR;

  /// @nodoc
  const factory ConfigDatabaseFailure.failedToInitializeConfigFLR() =
      FailedToInitializeConfigFLR;

  /// @nodoc
  const factory ConfigDatabaseFailure.failedToUpdateConfigFLR() =
      FailedToUpdateConfigFLR;
}
