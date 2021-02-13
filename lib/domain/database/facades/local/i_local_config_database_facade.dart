import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/config.dart';

/// @nodoc
abstract class ILocalConfigDatabaseFacade {
  /// @nodoc
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>> deleteConfig();

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>> fetchConfig();

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      initializeConfig({
    Config config,
  });

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>> updateConfig(
    Config config,
  );
}
