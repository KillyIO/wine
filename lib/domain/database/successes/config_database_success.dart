import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/config.dart';

part 'config_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseSuccess with _$ConfigDatabaseSuccess {
  /// @nodoc
  const factory ConfigDatabaseSuccess.configDeleted() = ConfigDeletedSuccess;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configFetched(Config config) =
      ConfigFetched;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configInitialized(Config config) =
      ConfigInitialized;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configUpdated(Config config) =
      ConfigUpdated;
}
