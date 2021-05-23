import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';

import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@LazySingleton(as: ISettingsRepository, env: [
  Environment.dev,
  Environment.prod,
])
class SettingsRepository implements ISettingsRepository {
  /// @nodoc
  SettingsRepository(
    this._firebaseAuth,
    this._hive,
  );

  final auth.FirebaseAuth _firebaseAuth;

  /// @nodoc
  final HiveInterface _hive;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      await box.delete(firebaseUser.uid);
    }

    if (box.get(firebaseUser?.uid) != null) {
      return const Err(SettingsFailure.settingsNotDeleted());
    }
    return const Ok(Unit());
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final settings = box.get(firebaseUser?.uid);

    if (settings != null) {
      return Ok(settings.toDomain());
    }
    return const Err(SettingsFailure.settingsNotFound());
  }

  @override
  Future<Result<Unit, SettingsFailure>> initializeSettings() async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    const settings = Settings(
      enableSeriesViewsCount: false,
      enableSeriesLikesCount: false,
      enableSeriesBookmarksCount: false,
      enableChaptersViewsCount: false,
      enableChaptersLikesCount: false,
      enableChaptersBookmarksCount: false,
    );

    if (firebaseUser != null) {
      await box.put(
        firebaseUser.uid,
        SettingsDTO.fromDomain(settings).toAdapter(),
      );
    }

    if (box.get(firebaseUser?.uid) != null) {
      return const Ok(Unit());
    }
    return const Err(SettingsFailure.settingsNotInitialized());
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final settingsAdapter = SettingsDTO.fromDomain(settings).toAdapter();

    if (firebaseUser != null) {
      await box.put(firebaseUser.uid, settingsAdapter);
    }

    if (box.get(firebaseUser?.uid) == settingsAdapter) return const Ok(Unit());

    return const Err(SettingsFailure.settingsNotUpdated());
  }
}
