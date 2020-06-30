import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';

class VerifyEmailAuthenticationMethods {
  final BuildContext context;

  VerifyEmailAuthenticationMethods(this.context);

  void resendVerificationEmail() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(const CreateAccountAuthenticationEvent.resendVerificationEmailEVT());
}
