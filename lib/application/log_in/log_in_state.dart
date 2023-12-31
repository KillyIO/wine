part of 'log_in_bloc.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    required EmailAddress emailAddress,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isAuthenticated,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
  }) = _LogInState;

  factory LogInState.initial() => LogInState(
        emailAddress: EmailAddress(''),
        failureOption: const None(),
        isAuthenticated: false,
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
