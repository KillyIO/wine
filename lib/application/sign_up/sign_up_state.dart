part of 'sign_up_bloc.dart';

/// @nodoc
@freezed
class SignUpState with _$SignUpState {
  /// @nodoc
  const factory SignUpState({
    required ConfirmPassword confirmPassword,
    required EmailAddress emailAddress,
    required Option<Result<dynamic, CoreFailure>> failureOption,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
    required Username username,
  }) = _SignUpState;

  /// @nodoc
  factory SignUpState.initial() => SignUpState(
        confirmPassword: ConfirmPassword('', ''),
        emailAddress: EmailAddress(''),
        failureOption: const None(),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
