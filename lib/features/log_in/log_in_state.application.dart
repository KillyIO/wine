part of 'log_in_bloc.application.dart';

/// @nodoc
@freezed
class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    required EmailAddress emailAddress,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isAuthenticated,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        emailAddress: EmailAddress(''),
        failureOption: const None(),
        isAuthenticated: false,
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
