part of 'splash_authentication_bloc.dart';

@freezed
abstract class SplashAuthenticationState with _$SplashAuthenticationState {
  const factory SplashAuthenticationState({
    @required bool isAuthenticating,
    @required AccountStatus accountStatus,
    @required
        Option<Either<AuthenticationFailure, Unit>>
            authenticationFailureOrSuccessOption,
  }) = _SplashAuthenticationState;

  factory SplashAuthenticationState.initial() => SplashAuthenticationState(
        isAuthenticating: false,
        accountStatus: AccountStatus.unknown,
        authenticationFailureOrSuccessOption: none(),
      );
}
