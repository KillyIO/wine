part of 'log_in_bloc.dart';

/// @nodoc
@freezed
class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    required EmailAddress emailAddress,
    required Option<Result<dynamic, CoreFailure>> failureOption,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        emailAddress: EmailAddress(''),
        failureOption: const None(),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
