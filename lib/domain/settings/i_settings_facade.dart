import 'package:dartz/dartz.dart';
import 'package:wine/domain/models/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';

/// @nodoc
abstract class ISettingsFacade {
  /// @nodoc
  Future<Either<SettingsFailure, Unit>> deleteSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Settings>> fetchSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Settings>> initializeSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Settings>> updateSettings(Settings settings);
}
