part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashEvent with _$SplashEvent {
  /// @nodoc
  const factory SplashEvent.authenticated() = Authenticated;

  /// @nodoc
  const factory SplashEvent.placeholdersCached() = PlaceholdersCached;

  /// @nodoc
  const factory SplashEvent.placeholdersLoaded(
    Map<String, String> placeholders,
  ) = PlaceholdersLoaded;

  /// @nodoc
  const factory SplashEvent.sessionFetched(User session) = SessionFetched;

  /// @nodoc
  const factory SplashEvent.settingsInitialized() = SettingsInitialized;

  /// @nodoc
  const factory SplashEvent.splashPageLaunched() = SplashPageLaunched;

  /// @nodoc
  const factory SplashEvent.userLoaded(User user) = UserLoaded;
}
