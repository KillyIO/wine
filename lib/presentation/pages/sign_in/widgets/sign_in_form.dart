import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_create_account_button.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_separator.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_social_media_button.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignInAuthenticationBloc, SignInAuthenticationState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (some) => some.fold(
                (failure) => failure.maybeMap(
                  serverError: (_) => wineShowDialog(
                    context: context,
                    builder: (_) => WINEErrorDialog(
                      message: 'An unexpected error occured!',
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ),
                  invalidEmailAndPasswordCombination: (_) => wineShowDialog(
                    context: context,
                    builder: (_) => WINEErrorDialog(
                      message: 'Incorrect email or password.',
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ),
                  orElse: () {},
                ),
                (right) {
                  if (right is User) {
                    context
                        .bloc<SignInDatabaseBloc>()
                        .add(SignInDatabaseEvent.signedIn(right));
                  }
                },
              ),
            );
          },
        ),
        BlocListener<SignInDatabaseBloc, SignInDatabaseState>(
          listener: (context, state) {
            state.databaseFailureOrSuccessOption.fold(
              () {},
              (some) => some.fold(
                (failure) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'An unexpected error occured!',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                (_) {
                  sailor.navigate(
                    Constants.homeRoute,
                    navigationType: NavigationType.pushAndRemoveUntil,
                    removeUntilPredicate: (_) => false,
                  );
                  context.bloc<CoreAuthenticationBloc>().add(
                      const CoreAuthenticationEvent.getUserAnonymousStatus());
                  context
                      .bloc<HomeNavigationBloc>()
                      .add(const HomeNavigationEvent.resetHomeNavigationBloc());
                },
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<SignInAuthenticationBloc, SignInAuthenticationState>(
        builder: (context, signInAuthState) {
          return BlocBuilder<SignInDatabaseBloc, SignInDatabaseState>(
            builder: (context, signInDbState) {
              return SafeArea(
                child: Stack(
                  children: <Widget>[
                    Form(
                      autovalidate: signInAuthState.showErrorMessages,
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior(),
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50.0, top: 100.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Sign in to access more features.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 75),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Email address',
                                  contentPadding: const EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                onChanged: (value) => context
                                    .bloc<SignInAuthenticationBloc>()
                                    .add(SignInAuthenticationEvent.emailChanged(
                                      value,
                                    )),
                                validator: (_) => context
                                    .bloc<SignInAuthenticationBloc>()
                                    .state
                                    .emailAddress
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                          invalidEmailAddress: (_) =>
                                              'The email address is invalid.',
                                          orElse: () => null),
                                      (_) => null,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  contentPadding: const EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                obscureText: true,
                                onChanged: (value) => context
                                    .bloc<SignInAuthenticationBloc>()
                                    .add(SignInAuthenticationEvent
                                        .passwordChanged(
                                      value,
                                    )),
                                validator: (_) => context
                                    .bloc<SignInAuthenticationBloc>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                          invalidPassword: (_) =>
                                              'The password is invalid.',
                                          orElse: () => null),
                                      (_) => null,
                                    ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 75.0),
                              child: Container(
                                height: 50.0,
                                child: FlatButton(
                                  color: Palettes.strongCyan,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  onPressed: () => context
                                      .bloc<SignInAuthenticationBloc>()
                                      .add(
                                        const SignInWithEmailAndPasswordPressed(),
                                      ),
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            SignInSeparator(),
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                SignInSocialMediaButton(
                                  onPressed: () => context
                                      .bloc<SignInAuthenticationBloc>()
                                      .add(const SignInWithGooglePressed()),
                                  icon: FontAwesome.google,
                                )
                              ],
                            ),
                            const SizedBox(height: 50),
                            SignInCreateAccountButton(
                              onPressed: () => sailor(
                                Constants.createAccountRoute,
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedSize(
                        duration: const Duration(milliseconds: 200),
                        vsync: this,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          height: signInAuthState.isSubmitting ||
                                  signInDbState.isUpdating
                              ? MediaQuery.of(context).size.height
                              : 0.0,
                          child: const Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
