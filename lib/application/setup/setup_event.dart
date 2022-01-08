part of 'setup_bloc.dart';

/// @nodoc
@freezed
class SetupEvent with _$SetupEvent {
  /// @nodoc
  const factory SetupEvent.appLaunched() = AppLaunched;

  /// @nodoc
  const factory SetupEvent.authenticated() = Authenticated;

  /// @nodoc
  const factory SetupEvent.defaultCoverURLsCached() = DefaultCoverURLsCached;

  /// @nodoc
  const factory SetupEvent.defaultCoverURLsLoaded(
    Map<String, String> defaultCoverURLs,
  ) = DefaultCoverURLsLoaded;

  /// @nodoc
  const factory SetupEvent.onboardingDonePressed() = OnboardingDonePressed;

  /// @nodoc
  const factory SetupEvent.sessionFetched(User session) = SessionFetched;

  /// @nodoc
  const factory SetupEvent.sessionNotFound() = SessionNotFound;

  /// @nodoc
  const factory SetupEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory SetupEvent.settingsInitialized() = SettingsInitialized;

  /// @nodoc
  const factory SetupEvent.settingsNotFound() = SettingsNotFound;

  /// @nodoc
  const factory SetupEvent.userLoaded(User user) = UserLoaded;
}
