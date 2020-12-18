part of 'splash_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SplashAuthenticationState with _$SplashAuthenticationState {
  /// @nodoc
  const factory SplashAuthenticationState({
    @required bool isAnonymous,
    @required bool isAuthenticating,
    @required
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption,
  }) = _SplashAuthenticationState;

  /// @nodoc
  factory SplashAuthenticationState.initial() => SplashAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        isAnonymous: false,
        isAuthenticating: false,
      );
}
