import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';

/// @nodoc
class SignInAuthenticationMethods {
  /// @nodoc
  SignInAuthenticationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void emailChanged(String value) => context
      .read<SignInAuthenticationBloc>()
      .add(SignInAuthenticationEvent.emailChangedEVT(value));

  /// @nodoc
  void passwordChanged(String value) => context
      .read<SignInAuthenticationBloc>()
      .add(SignInAuthenticationEvent.passwordChangedEVT(value));

  /// @nodoc
  void signInWithEmailAndPasswordButtonPressed() => context
      .read<SignInAuthenticationBloc>()
      .add(const SignInAuthenticationEvent
          .signInWithEmailAndPasswordPressedEVT());

  /// @nodoc
  void signInWithGoogleButtonPressed() => context
      .read<SignInAuthenticationBloc>()
      .add(const SignInAuthenticationEvent.signInWithGooglePressedEVT());

  /// @nodoc
  String emailValidator() =>
      context.read<SignInAuthenticationBloc>().state.emailAddress.value.fold(
            (f) => f.maybeMap(
                invalidEmailAddress: (_) => 'The email address is invalid.',
                orElse: () => null),
            (_) => null,
          );

  /// @nodoc
  String passwordValidator() =>
      context.read<SignInAuthenticationBloc>().state.password.value.fold(
            (f) => f.maybeMap(
                invalidPassword: (_) => 'The password is invalid.',
                orElse: () => null),
            (_) => null,
          );
}
