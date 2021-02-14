part of 'log_in_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class LogInAuthenticationState with _$LogInAuthenticationState {
  /// @nodoc
  const factory LogInAuthenticationState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required
        Option<Either<AuthenticationFailure, AuthenticationSuccess>>
            authFailureOrSuccessOption,
    @required Password password,
  }) = _LogInAuthenticationState;

  /// @nodoc
  factory LogInAuthenticationState.initial() => LogInAuthenticationState(
        authFailureOrSuccessOption: none(),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
