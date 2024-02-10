part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isLoggedOut,
    required bool isProcessing,
    required Settings settings,
    required String username,
  }) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
        failureOption: const None(),
        isLoggedOut: false,
        isProcessing: false,
        settings: Settings.empty(),
        username: '',
      );
}
