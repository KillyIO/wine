import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  void initState() {
    context
        .bloc<CreateAccountDatabaseBloc>()
        .add(const VerifyEmailPageLaunched());
    super.initState();
  }

  void _onContinuePressed() {
    sailor.navigate(
      Constants.homeRoute,
      navigationType: NavigationType.pushAndRemoveUntil,
      removeUntilPredicate: (_) => false,
    );
    // context.bloc<CoreAuthenticationBloc>().add(const PageLaunched());
    context.bloc<HomeNavigationBloc>().add(const ResetHomeNavigationBloc());
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<CreateAccountAuthenticationBloc,
            CreateAccountAuthenticationState>(
          builder: (context, authenticationState) {
            return BlocBuilder<CreateAccountDatabaseBloc,
                CreateAccountDatabaseState>(
              builder: (context, databaseState) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Please verify your email address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Palettes.darkCobaltBlue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25.0),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Palettes.darkCobaltBlue,
                                fontSize: 16.0,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                  text:
                                      'An email has been sent to your email address ',
                                ),
                                TextSpan(
                                  text: '${databaseState.email}.\n',
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Visibility(
                            visible: authenticationState.isVerificationEmailSent,
                            child: const Text(
                              'A new verification email has been sent to your email address.',
                            ),
                          ),
                        ),
                        Container(
                          height: 60.0,
                          width: double.infinity,
                          child: FlatButton(
                            color: Palettes.strongCyan,
                            onPressed: _onContinuePressed,
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 60.0,
                            width: double.infinity,
                            child: FlatButton(
                              color: Palettes.darkCyanBlue,
                              onPressed: () => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .add(const ResendVerificationEmail()),
                              child: Text(
                                'RESEND EMAIL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
