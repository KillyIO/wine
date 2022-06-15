import 'package:oxidized/oxidized.dart';
import 'package:wine/features/settings/settings.domain.dart';
import 'package:wine/features/settings/settings_failure.domain.dart';

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
