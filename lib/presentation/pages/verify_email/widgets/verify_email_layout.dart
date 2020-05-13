import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/verify_email/widgets/verify_email_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class VerifyEmailLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountAuthenticationBloc,
        CreateAccountAuthenticationState>(
      builder: (context, caAuthState) {
        return BlocBuilder<CreateAccountDatabaseBloc,
            CreateAccountDatabaseState>(
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
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text:
                                'An email has been sent to your email address ',
                          ),
                          TextSpan(
                            text: '${caDbState.email}.\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text:
                                'Please click on the link to verify your email and continue the registration process.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Visibility(
                      visible: caAuthState.isVerificationEmailSent,
                      child: const Text(
                        'A new verification email has been sent to your email address.',
                      ),
                    ),
                    const SizedBox(height: 20),
                    VerifyEmailButton(
                      title: 'CONTINUE',
                      titleColor: Colors.white,
                      onPressed: () {
                        sailor.navigate(
                          Constants.homeRoute,
                          navigationType: NavigationType.pushAndRemoveUntil,
                          removeUntilPredicate: (_) => false,
                        );
                        context.bloc<CoreAuthenticationBloc>().add(
                            const CoreAuthenticationEvent
                                .authenticationChanged());
                        context.bloc<HomeNavigationBloc>().add(
                            const HomeNavigationEvent
                                .resetHomeNavigationBloc());
                      },
                      color: Palettes.strongCyan,
                    ),
                    const SizedBox(height: 20),
                    VerifyEmailButton(
                      title: 'RESEND EMAIL',
                      titleColor: Colors.white,
                      onPressed: () => context
                          .bloc<CreateAccountAuthenticationBloc>()
                          .add(const ResendVerificationEmail()),
                      color: Colors.black,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
