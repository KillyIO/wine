import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';

class SignInAuthenticationMethods {
  final BuildContext context;

  SignInAuthenticationMethods(this.context);

  void emailChanged(String value) =>
      context.bloc<SignInAuthenticationBloc>().add(SignInAuthenticationEvent.emailChangedEVT(value));

  void passwordChanged(String value) =>
      context.bloc<SignInAuthenticationBloc>().add(SignInAuthenticationEvent.passwordChangedEVT(value));

  void signInWithEmailAndPasswordButtonPressed() => context
      .bloc<SignInAuthenticationBloc>()
      .add(const SignInAuthenticationEvent.signInWithEmailAndPasswordPressedEVT());

  void signInWithGoogleButtonPressed() =>
      context.bloc<SignInAuthenticationBloc>().add(const SignInAuthenticationEvent.signInWithGooglePressedEVT());

  String emailValidator() => context.bloc<SignInAuthenticationBloc>().state.emailAddress.value.fold(
        (f) => f.maybeMap(invalidEmailAddress: (_) => 'The email address is invalid.', orElse: () => null),
        (_) => null,
      );

  String passwordValidator() => context.bloc<SignInAuthenticationBloc>().state.password.value.fold(
        (f) => f.maybeMap(invalidPassword: (_) => 'The password is invalid.', orElse: () => null),
        (_) => null,
      );
}
