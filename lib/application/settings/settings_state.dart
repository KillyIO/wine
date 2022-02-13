part of 'settings_bloc.dart';

/// @nodoc
@freezed
class SettingsState with _$SettingsState {
  /// @nodoc
  const factory SettingsState({
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isLoggedOut,
    required bool isProcessing,
    required Settings settings,
    required String username,
  }) = _SettingsState;

  /// @nodoc
  factory SettingsState.initial() => const SettingsState(
        failureOption: None(),
        isLoggedOut: false,
        isProcessing: false,
        settings: Settings(
          enableBranchesBookmarksCount: false,
          enableBranchesLikesCount: false,
          enableBranchesViewsCount: false,
          enableTreesBookmarksCount: false,
          enableTreesLikesCount: false,
          enableTreesViewsCount: false,
        ),
        username: '',
      );
}
