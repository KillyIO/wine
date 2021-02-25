import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/models/settings.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/utils/constants/misc.dart';

/// @nodoc
@LazySingleton(as: ISettingsRepository)
class HiveSettingsRepository implements ISettingsRepository {
  /// @nodoc
  HiveSettingsRepository(this._settingsBox);

  final Box<Settings> _settingsBox;

  @override
  Future<Either<SettingsFailure, Unit>> deleteSettings() async {
    await _settingsBox.delete(sessionSettings);

    final config = _settingsBox.get(sessionSettings);
    if (config != null) {
      return left(const SettingsFailure.settingsNotDeleted());
    }
    return right(unit);
  }

  @override
  Future<Either<SettingsFailure, Settings>> fetchSettings() async {
    final settings = _settingsBox.get(sessionSettings);

    if (settings != null) {
      return right(settings);
    }
    return left(const SettingsFailure.settingsNotFetched());
  }

  @override
  Future<Either<SettingsFailure, Unit>> initializeSettings() async {
    if (_settingsBox.get(sessionSettings) == null) {
      await _settingsBox.put(
        sessionSettings,
        Settings(
          enableSeriesViewsCount: false,
          enableSeriesLikesCount: false,
          enableSeriesBookmarksCount: false,
          enableChaptersViewsCount: false,
          enableChaptersLikesCount: false,
          enableChaptersBookmarksCount: false,
        ),
      );
    }

    if (_settingsBox.get(sessionSettings) != null) {
      return right(unit);
    }
    return left(const SettingsFailure.settingsNotInitialized());
  }

  @override
  Future<Either<SettingsFailure, Unit>> updateSettings(
    Settings settings,
  ) async {
    await _settingsBox.put(sessionSettings, settings);

    final updatedSettings = _settingsBox.get(sessionSettings);
    if (updatedSettings == settings) {
      return right(unit);
    }
    return left(const SettingsFailure.settingsNotUpdated());
  }
}
