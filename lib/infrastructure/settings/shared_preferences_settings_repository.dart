import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';

@LazySingleton(
  as: ISettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SharedPreferencesSettingsRepository implements ISettingsRepository {
  SharedPreferencesSettingsRepository(
    this._firebaseAuth,
    this._sharedPreferences,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final SharedPreferences _sharedPreferences;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SettingsFailure.settingsNotDeleted());
      }

      return (await _sharedPreferences.remove('settings_${firebaseUser.uid}'))
          ? const Ok(unit)
          : const Err(SettingsFailure.settingsNotDeleted());
    } catch (e) {
      return const Err(SettingsFailure.settingsNotDeleted());
    }
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SettingsFailure.settingsNotFound());
      }

      final settingsJson =
          _sharedPreferences.getString('settings_${firebaseUser.uid}');

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
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SettingsFailure.settingsNotInitialized());
      }

      final settingsJson =
          _sharedPreferences.getString('settings_${firebaseUser.uid}');

      if (settingsJson == null) {
        final result = await _sharedPreferences.setString(
          'settings_${firebaseUser.uid}',
          jsonEncode(
            SettingsDTO.fromDomain(
              Settings(
                uid: UniqueID.fromUniqueString(firebaseUser.uid),
                enableBranchesViewsCount: false,
                enableBranchesLikesCount: false,
                enableBranchesBookmarksCount: false,
                enableTreesViewsCount: false,
                enableTreesLikesCount: false,
                enableTreesBookmarksCount: false,
              ),
            ).toJson(),
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
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SettingsFailure.settingsNotUpdated());
      }

      final result = await _sharedPreferences.setString(
        'settings_${firebaseUser.uid}',
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
