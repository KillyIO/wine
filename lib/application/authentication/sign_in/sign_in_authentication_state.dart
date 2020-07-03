part of 'sign_in_authentication_bloc.dart';

@freezed
abstract class SignInAuthenticationState with _$SignInAuthenticationState {
  const factory SignInAuthenticationState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required Option<Either<AuthenticationFailure, AuthenticationSuccess>> authFailureOrSuccessOption,
    @required Password password,
  }) = _SignInAuthenticationState;

  factory SignInAuthenticationState.initial() => SignInAuthenticationState(
        authFailureOrSuccessOption: none(),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
