part of 'sign_up_bloc.dart';

/// @nodoc
@freezed
abstract class SignUpState with _$SignUpState {
  /// @nodoc
  const factory SignUpState({
    @required bool isProcessing,
    @required bool showErrorMessages,
    @required EmailAddress emailAddress,
    @required
        Option<Either<AuthenticationFailure, dynamic>> authenticationOption,
    @required Password confirmPassword,
    @required Password password,
    @required Username username,
  }) = _SignUpState;

  /// @nodoc
  factory SignUpState.initial() => SignUpState(
        authenticationOption: none(),
        confirmPassword: Password('', ''),
        emailAddress: EmailAddress(''),
        isProcessing: false,
        password: Password(''),
        showErrorMessages: false,
        username: Username(''),
      );
}
