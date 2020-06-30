import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';

class CreateAccountAuthenticationMethods {
  final BuildContext context;

  CreateAccountAuthenticationMethods(this.context);

  void emailChanged(String value) =>
      context.bloc<CreateAccountAuthenticationBloc>().add(CreateAccountAuthenticationEvent.emailChangedEVT(value));

  void confirmPasswordChanged(String value, String password) => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.confirmPasswordChangedEVT(value, password));

  void usernameChanged(String value) =>
      context.bloc<CreateAccountAuthenticationBloc>().add(CreateAccountAuthenticationEvent.usernameChangedEVT(value));

  void createAccount() =>
      context.bloc<CreateAccountAuthenticationBloc>().add(const CreateAccountAuthenticationEvent.createAccountEVT());

  String emailValidator() => context.bloc<CreateAccountAuthenticationBloc>().state.emailAddress.value.fold(
        (f) => f.maybeMap(invalidEmailAddress: (_) => 'The email address is invalid.', orElse: () => null),
        (_) => null,
      );

  String passwordValidator() => context.bloc<CreateAccountAuthenticationBloc>().state.password.value.fold(
        (f) => f.maybeMap(invalidPassword: (_) => 'The password is invalid.', orElse: () => null),
        (_) => null,
      );

  String confirmPasswordValidator() => context.bloc<CreateAccountAuthenticationBloc>().state.confirmPassword.value.fold(
        (f) => f.maybeMap(invalidConfirmPassword: (_) => 'The confirm password is invalid.', orElse: () => null),
        (_) => null,
      );

  String usernameValidator() => context.bloc<CreateAccountAuthenticationBloc>().state.username.value.fold(
        (f) => f.maybeMap(invalidUsername: (_) => 'The username is invalid.', orElse: () => null),
        (_) => null,
      );
}
