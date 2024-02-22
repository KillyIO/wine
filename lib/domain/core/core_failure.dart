import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/branch/branch_failure.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/tree/tree_failure.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'core_failure.freezed.dart';

@freezed
class CoreFailure with _$CoreFailure {
  const factory CoreFailure.auth(AuthFailure f) = _Auth;

  const factory CoreFailure.branch(BranchFailure f) = _Branch;

  const factory CoreFailure.defaultCovers(DefaultCoversFailure f) =
      _DefaultCovers;

  const factory CoreFailure.sessions(SessionsFailure f) = _Sessions;

  const factory CoreFailure.settings(SettingsFailure f) = _Settings;

  const factory CoreFailure.tree(TreeFailure f) = _Tree;

  const factory CoreFailure.user(UserFailure f) = _User;
}
