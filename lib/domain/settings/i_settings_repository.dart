import 'package:oxidized/oxidized.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';

/// @nodoc
abstract class ISettingsRepository {
  /// @nodoc
  Future<Result<Unit, SettingsFailure>> deleteSettings();

  /// @nodoc
  Future<Result<Settings, SettingsFailure>> fetchSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> initializeSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> updateSettings(Settings settings);
}
