part of 'log_in_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class LogInAuthenticationState with _$LogInAuthenticationState {
  /// @nodoc
  const factory LogInAuthenticationState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required Option<Either<AuthenticationFailure, User>> authenticationOption,
    @required Password password,
  }) = _LogInAuthenticationState;

  /// @nodoc
  factory LogInAuthenticationState.initial() => LogInAuthenticationState(
        authenticationOption: none(),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
