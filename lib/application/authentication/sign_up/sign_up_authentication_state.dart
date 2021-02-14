part of 'sign_up_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpAuthenticationState with _$SignUpAuthenticationState {
  /// @nodoc
  const factory SignUpAuthenticationState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authenticationFailureOrSuccessOption,
    @required Password confirmPassword,
    @required Password password,
    @required Username username,
  }) = _SignUpAuthenticationState;

  /// @nodoc
  factory SignUpAuthenticationState.initial() => SignUpAuthenticationState(
        authenticationFailureOrSuccessOption: none(),
        confirmPassword: Password('', ''),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
