part of 'splash_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SplashAuthenticationState with _$SplashAuthenticationState {
  /// @nodoc
  const factory SplashAuthenticationState.initial() = _Initial;

  /// @nodoc
  const factory SplashAuthenticationState.authenticating() = _Authenticating;

  /// @nodoc
  const factory SplashAuthenticationState.authenticated(
    bool isAnonymous,
    Option<Either<AuthenticationFailure, Unit>> authenticationOption,
  ) = _Authenticated;
}
