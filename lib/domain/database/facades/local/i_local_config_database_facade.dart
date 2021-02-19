import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/models/config.dart';

/// @nodoc
abstract class ILocalConfigDatabaseFacade {
  /// @nodoc
  Future<Either<ConfigDatabaseFailure, Unit>> deleteConfig();

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, Config>> fetchConfig();

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, Config>> initializeConfig({
    Config config,
  });

  /// @nodoc
  Future<Either<ConfigDatabaseFailure, Config>> updateConfig(Config config);
}
