part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashState with _$SplashState {
  /// @nodoc
  const factory SplashState.authenticated(
    Option<Either<AuthenticationFailure, Unit>> authenticationOption,
  ) = _Authenticated;

  /// @nodoc
  const factory SplashState.initial() = _Initial;

  /// @nodoc
  const factory SplashState.configFetched(
    Option<Either<ConfigFailure, Config>> configOption,
  ) = _ConfigFetched;

  /// @nodoc
  const factory SplashState.placeholdersCached(
    Option<Either<PlaceholderFailure, Unit>> palceholderOption,
  ) = _PlaceholdersCached;

  /// @nodoc
  const factory SplashState.placeholdersLoaded(
    Option<Either<PlaceholderFailure, Map<String, String>>> palceholderOption,
  ) = _PlaceholdersLoaded;

  /// @nodoc
  const factory SplashState.processing() = _Processing;

  /// @nodoc
  const factory SplashState.sessionFetched(
    Option<Either<SessionFailure, User>> sessionOption,
  ) = _SessionFetched;

  /// @nodoc
  const factory SplashState.userLoaded(
    Option<Either<UserFailure, User>> userOption,
  ) = _UserLoaded;
}
