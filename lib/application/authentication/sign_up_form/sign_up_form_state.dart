part of 'sign_up_form_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpFormState with _$SignUpFormState {
  /// @nodoc
  const factory SignUpFormState({
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required
        Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
    @required Password confirmPassword,
    @required Password password,
    @required Username username,
  }) = _SignUpFormState;

  /// @nodoc
  factory SignUpFormState.initial() => SignUpFormState(
        authenticationOption: none(),
        confirmPassword: Password('', ''),
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
