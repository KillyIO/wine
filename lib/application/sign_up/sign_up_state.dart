part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required ConfirmPassword confirmPassword,
    required EmailAddress emailAddress,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isAuthenticated,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
    required Username username,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        confirmPassword: ConfirmPassword('', ''),
        emailAddress: EmailAddress(''),
        failureOption: const None(),
        isAuthenticated: false,
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
