import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/presentation/pages/verify_email/utils/verify_email_authentication_methods.dart';
import 'package:wine/presentation/pages/verify_email/utils/verify_email_listeners.dart';
import 'package:wine/presentation/pages/verify_email/widgets/verify_email_instructions.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/palettes.dart';

class VerifyEmailLayout extends StatefulWidget {
  @override
  _VerifyEmailLayoutState createState() => _VerifyEmailLayoutState();
}

class _VerifyEmailLayoutState extends State<VerifyEmailLayout> {
  VerifyEmailAuthenticationMethods _veMethods;
  VerifyEmailListeners _veListeners;

  @override
  void initState() {
    super.initState();
    _veMethods = VerifyEmailAuthenticationMethods(context);
    _veListeners = VerifyEmailListeners();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: _veListeners.listeners,
      child: BlocBuilder<CreateAccountAuthenticationBloc, CreateAccountAuthenticationState>(
        builder: (context, caAuthState) {
          return BlocBuilder<CreateAccountDatabaseBloc, CreateAccountDatabaseState>(
            builder: (context, caDbState) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Please verify your email address',
                          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 25),
                      VerifyEmailInstructions(emailAddress: caDbState.email),
                      const SizedBox(height: 20),
                      WINEButton(
                        title: 'CONTINUE',
                        color: Palettes.pastelPink,
                        onPressed: () => Methods.pseudoRestart(context),
                        hasRoundedCorners: true,
                      ),
                      const SizedBox(height: 20),
                      WINEButton(
                        title: 'RESEND EMAIL',
                        color: Colors.black,
                        onPressed: _veMethods.resendVerificationEmail,
                        hasRoundedCorners: true,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
