part of 'setup_bloc.dart';

@freezed
sealed class SetupEvent with _$SetupEvent {
  const factory SetupEvent.appLaunched() = AppLaunched;

  const factory SetupEvent.authenticated() = Authenticated;

  const factory SetupEvent.settingsFetched() = SettingsFetched;

  const factory SetupEvent.sessionFetched(User session) = SessionFetched;

  const factory SetupEvent.userLoaded(User user) = UserLoaded;

  const factory SetupEvent.settingsNotFound() = SettingsNotFound;

  const factory SetupEvent.settingsInitialized() = SettingsInitialized;

  const factory SetupEvent.defaultCoversLoaded(
    List<DefaultCover> defaultCovers,
  ) = DefaultCoversLoaded;

  const factory SetupEvent.defaultCoversCached() = DefaultCoversCached;
}
