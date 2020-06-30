part of 'create_account_authentication_bloc.dart';

@freezed
abstract class CreateAccountAuthenticationState with _$CreateAccountAuthenticationState {
  const factory CreateAccountAuthenticationState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required Username username,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthenticationFailure, AuthenticationSuccess>> authenticationFailureOrSuccessOption,
  }) = _CreateAccountAuthenticationState;

  factory CreateAccountAuthenticationState.initial() => CreateAccountAuthenticationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: Password('', ''),
        username: Username(''),
        showErrorMessages: false,
        isSubmitting: false,
        authenticationFailureOrSuccessOption: none(),
      );
}
