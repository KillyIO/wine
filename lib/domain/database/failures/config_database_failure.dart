import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseFailure with _$ConfigDatabaseFailure {
  /// @nodoc
  const factory ConfigDatabaseFailure.configNotDeleted() = ConfigNotDeleted;

  /// @nodoc
  const factory ConfigDatabaseFailure.configNotInitialized() =
      ConfigNotInitialized;

  /// @nodoc
  const factory ConfigDatabaseFailure.configNotUpdated() = ConfigNotUpdated;
}
