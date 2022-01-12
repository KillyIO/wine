import 'package:firebase_auth/firebase_auth.dart' as auth;
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
  SettingsRepository(
    this._firebaseAuth,
    this._isar,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final Isar _isar;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      return _isar.writeTxn((isar) async {
        final isDeleted = await isar.isarSettingss
            .where()
            .uidEqualTo(firebaseUser.uid)
            .deleteFirst();

        if (isDeleted) {
          return Ok(unit);
        }
        return Err(const SettingsFailure.settingsNotDeleted());
      });
    }
    return Err(const SettingsFailure.settingsNotDeleted());
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      final settings = await _isar.isarSettingss
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (settings != null) {
        return Ok(settings.toDomain());
      }
    }
    return Err(const SettingsFailure.settingsNotFound());
  }

  @override
  Future<Result<Unit, SettingsFailure>> initializeSettings() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      return _isar.writeTxn((isar) async {
        final settings = await isar.isarSettingss
            .where()
            .uidEqualTo(firebaseUser.uid)
            .findFirst();

        if (settings == null) {
          await isar.isarSettingss.put(
            SettingsDTO.fromDomain(
              const Settings(
                enableSeriesViewsCount: false,
                enableSeriesLikesCount: false,
                enableSeriesBookmarksCount: false,
                enableChaptersViewsCount: false,
                enableChaptersLikesCount: false,
                enableChaptersBookmarksCount: false,
              ),
            ).toAdapter().copyWith(uid: firebaseUser.uid),
          );
        }

        return Ok(unit);
      });
    }
    return Err(const SettingsFailure.settingsNotInitialized());
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      var isarSettings = await _isar.isarSettingss
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (isarSettings == null) {
        return Err(const SettingsFailure.settingsNotFound());
      }

      final settingsAdapter = SettingsDTO.fromDomain(settings)
          .toAdapter()
          .copyWith(id: isarSettings.id, uid: firebaseUser.uid);

      await _isar.writeTxn((isar) async {
        await isar.isarSettingss.put(settingsAdapter);
      });

      isarSettings = await _isar.isarSettingss
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (isarSettings != null && isarSettings == settingsAdapter) {
        return Ok(unit);
      }
    }
    return Err(const SettingsFailure.settingsNotUpdated());
  }
}
