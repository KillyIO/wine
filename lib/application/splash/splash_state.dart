part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashState with _$SplashState {
  /// @nodoc
  const factory SplashState.authenticated(
    Option<Either<AuthFailure, Unit>> authOption,
  ) = _Authenticated;

  /// @nodoc
  const factory SplashState.defaultCoverURLsCached(
    Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption,
  ) = _DefaultCoverURLsCached;

  /// @nodoc
  const factory SplashState.defaultCoverURLsLoaded(
    Option<Either<DefaultCoversFailure, Map<String, String>>> defaultCoverOption,
  ) = _DefaultCoverURLsLoaded;

  /// @nodoc
  const factory SplashState.initial() = _Initial;

  /// @nodoc
  const factory SplashState.processing() = _Processing;

  /// @nodoc
  const factory SplashState.sessionFetched(
    Option<Either<SessionFailure, User>> sessionOption,
  ) = _SessionFetched;

  /// @nodoc
  const factory SplashState.settingsFetched(
    Option<Either<SettingsFailure, Settings>> settingsOption,
  ) = _ConfigFetched;

  /// @nodoc
  const factory SplashState.userLoaded(
    Option<Either<UserFailure, User>> userOption,
  ) = _UserLoaded;
}
