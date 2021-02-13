import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/config.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
@LazySingleton(as: ILocalConfigDatabaseFacade)
class HiveConfigDatabaseFacade implements ILocalConfigDatabaseFacade {
  /// @nodoc
  HiveConfigDatabaseFacade(this._configsBox);

  final Box<Config> _configsBox;

  @override
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      deleteConfig() async {
    await _configsBox.delete(Constants.sessionConfig);

    final config = _configsBox.get(Constants.sessionConfig);
    if (config != null) {
      return left(const ConfigDatabaseFailure.deleteConfigFailure());
    }
    return right(const ConfigDatabaseSuccess.configDeletedSuccess());
  }

  @override
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      fetchConfig() async {
    final config = _configsBox.get(Constants.sessionConfig);

    if (config != null) {
      return right(ConfigDatabaseSuccess.configFetchedSuccess(config));
    }
    return initializeConfig();
  }

  @override
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      initializeConfig({
    Config config,
  }) async {
    await _configsBox.put(
      Constants.sessionConfig,
      config ??
          Config(
            enableSeriesViewsCount: false,
            enableSeriesLikesCount: false,
            enableSeriesBookmarksCount: false,
            enableChaptersViewsCount: false,
            enableChaptersLikesCount: false,
            enableChaptersBookmarksCount: false,
          ),
    );

    final newConfig = _configsBox.get(Constants.sessionConfig);
    if (newConfig != null) {
      return right(ConfigDatabaseSuccess.configInitializedSuccess(newConfig));
    }
    return left(const ConfigDatabaseFailure.initializeConfigFailure());
  }

  @override
  Future<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>> updateConfig(
    Config config,
  ) async {
    await _configsBox.put(Constants.sessionConfig, config);

    final savedConfig = _configsBox.get(Constants.sessionConfig);
    if (savedConfig == config) {
      return right(ConfigDatabaseSuccess.configUpdatedSuccess(savedConfig));
    }
    return left(const ConfigDatabaseFailure.updateConfigFailure());
  }
}
