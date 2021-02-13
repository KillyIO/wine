import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/config.dart';

part 'config_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class ConfigDatabaseSuccess with _$ConfigDatabaseSuccess {
  /// @nodoc
  const factory ConfigDatabaseSuccess.configDeletedSuccess() =
      ConfigDeletedSuccess;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configFetchedSuccess(Config config) =
      ConfigFetchedSuccess;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configInitializedSuccess(Config config) =
      ConfigInitializedSuccess;

  /// @nodoc
  const factory ConfigDatabaseSuccess.configUpdatedSuccess(Config config) =
      ConfigUpdatedSuccess;
}
