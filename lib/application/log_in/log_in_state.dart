part of 'log_in_bloc.dart';

/// @nodoc
@freezed
abstract class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    @required Option<Either<AuthFailure, Unit>> authOption,
    @required EmailAddress emailAddress,
    @required bool isProcessing,
    @required Password password,
    @required bool showErrorMessages,
    @required Option<Either<UserFailure, dynamic>> userOption,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        authOption: none(),
        emailAddress: EmailAddress(''),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
        userOption: none(),
      );
}
