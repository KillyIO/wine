part of 'log_in_bloc.dart';

/// @nodoc
@freezed
abstract class LogInState with _$LogInState {
  /// @nodoc
  const factory LogInState({
    @required bool isProcessing,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required Option<Either<AuthFailure, User>> authOption,
    @required Option<Either<SessionFailure, dynamic>> sessionOption,
    @required Option<Either<UserFailure, dynamic>> userOption,
    @required Password password,
  }) = _LogInState;

  /// @nodoc
  factory LogInState.initial() => LogInState(
        authOption: none(),
        emailAddress: EmailAddress(''),
        isProcessing: false,
        password: Password(''),
        sessionOption: none(),
        showErrorMessages: false,
        userOption: none(),
      );
}
