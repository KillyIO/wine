import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/branch/branch_failure.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/tree/tree_failure.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/features/auth/auth_failure.domain.dart';

part 'core_failure.domain.freezed.dart';

/// @nodoc
@freezed
class CoreFailure with _$CoreFailure {
  /// @nodoc
  const factory CoreFailure.auth(AuthFailure f) = _Auth;

  /// @nodoc
  const factory CoreFailure.branch(BranchFailure f) = _Branch;

  /// @nodoc
  const factory CoreFailure.defaultCovers(DefaultCoversFailure f) =
      _DefaultCovers;

  /// @nodoc
  const factory CoreFailure.sessions(SessionsFailure f) = _Sessions;

  /// @nodoc
  const factory CoreFailure.settings(SettingsFailure f) = _Settings;

  /// @nodoc
  const factory CoreFailure.tree(TreeFailure f) = _Tree;

  /// @nodoc
  const factory CoreFailure.user(UserFailure f) = _User;
}
