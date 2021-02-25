import 'package:dartz/dartz.dart';
import 'package:wine/domain/models/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';

/// @nodoc
abstract class ISettingsRepository {
  /// @nodoc
  Future<Either<SettingsFailure, Unit>> deleteSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Settings>> fetchSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Unit>> initializeSettings();

  /// @nodoc
  Future<Either<SettingsFailure, Unit>> updateSettings(Settings settings);
}
