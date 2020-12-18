import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/hive/config.dart';

part 'config_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseSuccess with _$ConfigDatabaseSuccess {
  /// @nodoc
  const factory ConfigDatabaseSuccess.configDeletedSCS() = ConfigDeletedSCS;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configFetchedSCS(Config config) =
      ConfigFetchedSCS;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configInitializedSCS() =
      ConfigInitializedSCS;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configUpdatedSCS() = ConfigUpdatedSCS;
}
