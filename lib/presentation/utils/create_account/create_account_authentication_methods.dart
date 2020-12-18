import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';

/// @nodoc
class CreateAccountAuthenticationMethods {
  /// @nodoc
  CreateAccountAuthenticationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void emailChanged(String value) => context
      .read<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.emailChangedEVT(value));

  /// @nodoc
  void confirmPasswordChanged(String value, String password) => context
      .read<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.confirmPasswordChangedEVT(
          value, password));

  /// @nodoc
  void usernameChanged(String value) => context
      .read<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.usernameChangedEVT(value));

  /// @nodoc
  void createAccount() => context
      .read<CreateAccountAuthenticationBloc>()
      .add(const CreateAccountAuthenticationEvent.createAccountEVT());

  /// @nodoc
  String emailValidator() => context
      .read<CreateAccountAuthenticationBloc>()
      .state
      .emailAddress
      .value
      .fold(
        (f) => f.maybeMap(
            invalidEmailAddress: (_) => 'The email address is invalid.',
            orElse: () => null),
        (_) => null,
      );

  /// @nodoc
  String passwordValidator() =>
      context.read<CreateAccountAuthenticationBloc>().state.password.value.fold(
            (f) => f.maybeMap(
                invalidPassword: (_) => 'The password is invalid.',
                orElse: () => null),
            (_) => null,
          );

  /// @nodoc
  String confirmPasswordValidator() => context
      .read<CreateAccountAuthenticationBloc>()
      .state
      .confirmPassword
      .value
      .fold(
        (f) => f.maybeMap(
            invalidConfirmPassword: (_) => 'The confirm password is invalid.',
            orElse: () => null),
        (_) => null,
      );

  /// @nodoc
  String usernameValidator() =>
      context.read<CreateAccountAuthenticationBloc>().state.username.value.fold(
            (f) => f.maybeMap(
                invalidUsername: (_) => 'The username is invalid.',
                orElse: () => null),
            (_) => null,
          );
}
