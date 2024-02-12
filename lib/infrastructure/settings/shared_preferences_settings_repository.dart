import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';

@LazySingleton(
  as: ISettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SharedPreferencesSettingsRepository implements ISettingsRepository {
  SharedPreferencesSettingsRepository(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    try {
      return (await _sharedPreferences.remove('settings'))
          ? const Ok(unit)
          : const Err(SettingsFailure.settingsNotDeleted());
    } catch (e) {
      return const Err(SettingsFailure.settingsNotDeleted());
    }
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    try {
      final settingsJson = _sharedPreferences.getString('settings');

      if (settingsJson != null) {
        return Ok(
          SettingsDTO.fromJson(jsonDecode(settingsJson) as Map<String, dynamic>)
              .toDomain(),
        );
      }

      return const Err(SettingsFailure.settingsNotFound());
    } catch (e) {
      return const Err(SettingsFailure.settingsNotFound());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> initializeSettings() async {
    try {
      final settingsJson = _sharedPreferences.getString('settings');

      if (settingsJson == null) {
        final result = await _sharedPreferences.setString(
          'settings',
          jsonEncode(
            SettingsDTO.fromDomain(
              const Settings(
                enableBranchesViewsCount: false,
                enableBranchesLikesCount: false,
                enableBranchesBookmarksCount: false,
                enableTreesViewsCount: false,
                enableTreesLikesCount: false,
                enableTreesBookmarksCount: false,
              ),
            ).toMap(),
          ),
        );

        if (result) {
          return const Ok(unit);
        }
      }

      return const Err(SettingsFailure.settingsNotInitialized());
    } catch (e) {
      return const Err(SettingsFailure.settingsNotInitialized());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    try {
      final result = await _sharedPreferences.setString(
        'settings',
        jsonEncode(
          SettingsDTO.fromDomain(settings).toJson(),
        ),
      );

      if (!result) {
        return const Err(SettingsFailure.settingsNotUpdated());
      }

      return const Ok(unit);
    } catch (e) {
      return const Err(SettingsFailure.settingsNotUpdated());
    }
  }
}
