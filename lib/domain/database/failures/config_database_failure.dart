import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseFailure with _$ConfigDatabaseFailure {
  /// @nodoc
  const factory ConfigDatabaseFailure.deleteConfigFailure() =
      DeleteConfigFailure;

  /// @nodoc
  const factory ConfigDatabaseFailure.initializeConfigFailure() =
      InitializeConfigFailure;

  /// @nodoc
  const factory ConfigDatabaseFailure.updateConfigFailure() =
      UpdateConfigFailure;
}
