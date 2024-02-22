part of 'auth_dialog_cubit.dart';

@freezed
sealed class AuthDialogState with _$AuthDialogState {
  const factory AuthDialogState.initial() = _Initial;

  const factory AuthDialogState.logIn() = _LogIn;

  const factory AuthDialogState.signUp() = _SignUp;
}
