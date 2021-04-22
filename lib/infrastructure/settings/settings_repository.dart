import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@LazySingleton(as: ISettingsRepository, env: ['dev', 'prod'])
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
  Future<Either<SettingsFailure, Unit>> deleteSettings() async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    await box.delete(firebaseUser.uid);

    if (box.get(firebaseUser.uid) != null) {
      return left(const SettingsFailure.settingsNotDeleted());
    }
    return right(unit);
  }

  @override
  Future<Either<SettingsFailure, Settings>> fetchSettings() async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final settings = box.get(firebaseUser.uid);

    if (settings != null) {
      return right(settings.toDomain());
    }
    return left(const SettingsFailure.settingsNotFound());
  }

  @override
  Future<Either<SettingsFailure, Unit>> initializeSettings() async {
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

    await box.put(
      firebaseUser.uid,
      SettingsDTO.fromDomain(settings).toAdapter(),
    );

    if (box.get(firebaseUser.uid) != null) {
      return right(unit);
    }
    return left(const SettingsFailure.settingsNotInitialized());
  }

  @override
  Future<Either<SettingsFailure, Unit>> updateSettings(
    Settings settings,
  ) async {
    final box = await _hive.openBox<HiveSettings>(settingsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final settingsAdapter = SettingsDTO.fromDomain(settings).toAdapter();
    await box.put(firebaseUser.uid, settingsAdapter);

    if (box.get(firebaseUser.uid) == settingsAdapter) return right(unit);

    return left(const SettingsFailure.settingsNotUpdated());
  }
}
