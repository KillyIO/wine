import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';

abstract class ISettingsRepository {
  Future<Result<Unit, SettingsFailure>> deleteSettings();

  Future<Result<Settings, SettingsFailure>> fetchSettings();

  Future<Result<Unit, SettingsFailure>> initializeSettings();

  Future<Result<Unit, SettingsFailure>> updateSettings(Settings settings);
}
