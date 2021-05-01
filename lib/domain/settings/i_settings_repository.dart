import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';

/// @nodoc
abstract class ISettingsRepository {
  /// @nodoc
  Future<Result<SettingsFailure, Unit>> deleteSettings();

  /// @nodoc
  Future<Result<SettingsFailure, Settings>> fetchSettings();

  /// @nodoc
  Future<Result<SettingsFailure, Unit>> initializeSettings();

  /// @nodoc
  Future<Result<SettingsFailure, Unit>> updateSettings(Settings settings);
}
