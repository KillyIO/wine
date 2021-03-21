import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  /// @nodoc
  SettingsRepository(
    this._firebaseAuth,
    @Named(settingsBox) this._settingsBox,
  );

  final auth.FirebaseAuth _firebaseAuth;

  /// @nodoc
  final Box<Map<String, dynamic>> _settingsBox;

  @override
  Future<Either<SettingsFailure, Unit>> deleteSettings() async {
    final firebaseUser = _firebaseAuth.currentUser;

    await _settingsBox.delete(firebaseUser.uid);

    if (_settingsBox.get(firebaseUser.uid) != null) {
      return left(const SettingsFailure.settingsNotDeleted());
    }
    return right(unit);
  }

  @override
  Either<SettingsFailure, Settings> fetchSettings() {
    final firebaseUser = _firebaseAuth.currentUser;

    final settings = _settingsBox.get(firebaseUser.uid);

    if (settings != null) {
      return right(settings.toDomain());
    }
    return left(const SettingsFailure.settingsNotFound());
  }

  @override
  Future<Either<SettingsFailure, Unit>> initializeSettings() async {
    final firebaseUser = _firebaseAuth.currentUser;

    const settings = Settings(
      enableSeriesViewsCount: false,
      enableSeriesLikesCount: false,
      enableSeriesBookmarksCount: false,
      enableChaptersViewsCount: false,
      enableChaptersLikesCount: false,
      enableChaptersBookmarksCount: false,
    );

    await _settingsBox.put(
      firebaseUser.uid,
      SettingsDTO.fromDomain(settings).toJson(),
    );

    if (_settingsBox.get(firebaseUser.uid) != null) {
      return right(unit);
    }
    return left(const SettingsFailure.settingsNotInitialized());
  }

  @override
  Future<Either<SettingsFailure, Unit>> updateSettings(
    Settings settings,
  ) async {
    final firebaseUser = _firebaseAuth.currentUser;

    final settingsAsMap = SettingsDTO.fromDomain(settings).toJson();
    await _settingsBox.put(firebaseUser.uid, settingsAsMap);

    if (_settingsBox.get(firebaseUser.uid) == settingsAsMap) return right(unit);

    return left(const SettingsFailure.settingsNotUpdated());
  }
}
