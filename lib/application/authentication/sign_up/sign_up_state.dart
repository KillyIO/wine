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
    @required Option<Either<SessionFailure, dynamic>> sessionOption,
    @required Option<Either<UserFailure, dynamic>> userOption,
    @required Password confirmPassword,
    @required Password password,
    @required String emailAddressStr,
    @required Username username,
  }) = _SignUpState;

  /// @nodoc
  factory SignUpState.initial() => SignUpState(
        authenticationOption: none(),
        confirmPassword: Password('', ''),
        emailAddress: EmailAddress(''),
        emailAddressStr: '',
        isProcessing: false,
        password: Password(''),
        sessionOption: none(),
        showErrorMessages: false,
        userOption: none(),
        username: Username(''),
      );
}
