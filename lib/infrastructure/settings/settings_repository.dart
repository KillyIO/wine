import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/isar_settings.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';

/// @nodoc
@LazySingleton(
  as: ISettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SettingsRepository implements ISettingsRepository {
  /// @nodoc
  SettingsRepository(this._isar);

  final Isar _isar;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    try {
      return _isar.writeTxn(() async {
        final isDeleted = await _isar.settings.delete(0);

        if (isDeleted) {
          return Ok(unit);
        }
        return Err(const SettingsFailure.settingsNotDeleted());
      });
    } catch (e) {
      return Err(const SettingsFailure.settingsNotDeleted());
    }
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    try {
      final settings = await _isar.settings.get(0);

      if (settings != null) {
        return Ok(settings.toDomain());
      }
      return Err(const SettingsFailure.settingsNotFound());
    } catch (e) {
      return Err(const SettingsFailure.settingsNotFound());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> initializeSettings() async {
    try {
      return _isar.writeTxn(() async {
        final settings = await _isar.settings.get(0);

        if (settings == null) {
          await _isar.settings.put(
            SettingsDTO.fromDomain(
              const Settings(
                enableBranchesViewsCount: false,
                enableBranchesLikesCount: false,
                enableBranchesBookmarksCount: false,
                enableTreesViewsCount: false,
                enableTreesLikesCount: false,
                enableTreesBookmarksCount: false,
              ),
            ).toAdapter().copyWith(id: 0),
          );
        }

        return Ok(unit);
      });
    } catch (e) {
      return Err(const SettingsFailure.settingsNotInitialized());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    try {
      var isarSettings = await _isar.settings.get(0);

      if (isarSettings == null) {
        return Err(const SettingsFailure.settingsNotFound());
      }

      final settingsAdapter = SettingsDTO.fromDomain(settings)
          .toAdapter()
          .copyWith(id: isarSettings.id);

      await _isar.writeTxn(() async {
        await _isar.settings.put(settingsAdapter);
      });

      isarSettings = await _isar.settings.get(0);

      if (isarSettings != null && isarSettings == settingsAdapter) {
        return Ok(unit);
      }
      return Err(const SettingsFailure.settingsNotUpdated());
    } catch (e) {
      return Err(const SettingsFailure.settingsNotUpdated());
    }
  }
}
