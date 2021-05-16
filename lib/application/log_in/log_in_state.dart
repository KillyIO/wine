part of 'log_in_bloc.dart';

/// @nodoc
@freezed
class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    required Option<Result<Unit?, AuthFailure>> authOption,
    required EmailAddress emailAddress,
    required bool isProcessing,
    required Password password,
    required bool showErrorMessages,
    required Option<Result<dynamic, UserFailure>> userOption,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        authOption: const None(),
        emailAddress: EmailAddress(''),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
        userOption: const None(),
      );
}
