part of 'create_account_authentication_bloc.dart';

@freezed
abstract class CreateAccountAuthenticationState with _$CreateAccountAuthenticationState {
  const factory CreateAccountAuthenticationState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required Option<Either<AuthenticationFailure, AuthenticationSuccess>> authenticationFailureOrSuccessOption,
    @required Password confirmPassword,
    @required Password password,
    @required Username username,
  }) = _CreateAccountAuthenticationState;

  factory CreateAccountAuthenticationState.initial() => CreateAccountAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        confirmPassword: Password('', ''),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
