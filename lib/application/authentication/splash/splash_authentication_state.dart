part of 'splash_authentication_bloc.dart';

@freezed
abstract class SplashAuthenticationState with _$SplashAuthenticationState {
  const factory SplashAuthenticationState({
    @required bool isAuthenticating,
    @required bool isAnonymous,
    @required
        Option<Either<AuthenticationFailure, Unit>>
            authenticationFailureOrSuccessOption,
  }) = _SplashAuthenticationState;

  factory SplashAuthenticationState.initial() => SplashAuthenticationState(
        isAuthenticating: false,
        isAnonymous: false,
        authenticationFailureOrSuccessOption: none(),
      );
}
