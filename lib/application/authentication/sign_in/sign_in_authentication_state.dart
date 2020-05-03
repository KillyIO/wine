part of 'sign_in_authentication_bloc.dart';

@freezed
abstract class SignInAuthenticationState with _$SignInAuthenticationState {
  const factory SignInAuthenticationState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<AuthenticationFailure, dynamic>> authFailureOrSuccessOption,
  }) = _SignInAuthenticationState;

  factory SignInAuthenticationState.initial() => SignInAuthenticationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
