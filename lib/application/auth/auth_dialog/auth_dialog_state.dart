part of 'auth_dialog_cubit.dart';

/// @nodoc
@freezed
abstract class AuthDialogState with _$AuthDialogState {
  /// @nodoc
  const factory AuthDialogState.initial() = _Initial;

  /// @nodoc
  const factory AuthDialogState.logIn() = _LogIn;

  /// @nodoc
  const factory AuthDialogState.signUp() = _SignUp;
}
