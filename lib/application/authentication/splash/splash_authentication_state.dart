part of 'splash_authentication_bloc.dart';

@freezed
abstract class SplashAuthenticationState with _$SplashAuthenticationState {
  const factory SplashAuthenticationState({
    @required bool isAuthenticating,
    @required Option<Either<AuthenticationFailure, AuthenticationSuccess>> authenticationFailureOrSuccessOption,
  }) = _SplashAuthenticationState;

  factory SplashAuthenticationState.initial() => SplashAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        isAuthenticating: false,
      );
}
