part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashEvent with _$SplashEvent {
  /// @nodoc
  const factory SplashEvent.authenticated() = Authenticated;

  /// @nodoc
  const factory SplashEvent.defaultCoverURLsCached() = DefaultCoverURLsCached;

  /// @nodoc
  const factory SplashEvent.defaultCoverURLsLoaded(
    Map<String, String> defaultCoverURLs,
  ) = DefaultCoverURLsLoaded;

  /// @nodoc
  const factory SplashEvent.sessionFetched(User session) = SessionFetched;

  /// @nodoc
  const factory SplashEvent.sessionNotFound() = SessionNotFound;

  /// @nodoc
  const factory SplashEvent.settingsInitialized() = SettingsInitialized;

  /// @nodoc
  const factory SplashEvent.settingsFetched() = SettingsFetched;

  /// @nodoc
  const factory SplashEvent.settingsNotFound() = SettingsNotFound;

  /// @nodoc
  const factory SplashEvent.splashPageLaunched() = SplashPageLaunched;

  /// @nodoc
  const factory SplashEvent.userLoaded(User user) = UserLoaded;
}
