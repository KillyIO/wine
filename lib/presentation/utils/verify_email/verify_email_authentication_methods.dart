import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';

/// @nodoc
class VerifyEmailAuthenticationMethods {
  /// @nodoc
  VerifyEmailAuthenticationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void resendVerificationEmail() => context
      .read<CreateAccountAuthenticationBloc>()
      .add(const CreateAccountAuthenticationEvent.resendVerificationEmailEVT());
}
