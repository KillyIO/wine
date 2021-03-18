import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'core_failure.freezed.dart';

/// @nodoc
@freezed
abstract class CoreFailure with _$CoreFailure {
  /// @nodoc
  const factory CoreFailure.auth(AuthFailure f) = _Auth;

  /// @nodoc
  const factory CoreFailure.defaultCovers(DefaultCoversFailure f) =
      _DefaultCovers;

  /// @nodoc
  const factory CoreFailure.session(SessionFailure f) = _Session;

  /// @nodoc
  const factory CoreFailure.settings(SettingsFailure f) = _Settings;

  /// @nodoc
  const factory CoreFailure.user(UserFailure f) = _User;
}
