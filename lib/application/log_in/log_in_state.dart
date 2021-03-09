part of 'log_in_bloc.dart';

/// @nodoc
@freezed
abstract class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    @required EmailAddress emailAddress,
    @required Option<Either<CoreFailure, dynamic>> failureOrSuccessOption,
    @required bool isProcessing,
    @required Password password,
    @required bool showErrorMessages,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        emailAddress: EmailAddress(''),
        failureOrSuccessOption: none(),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
      );
}
