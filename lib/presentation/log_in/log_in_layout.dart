import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/text_fields/authentication_text_field.dart';
import 'package:wine/presentation/log_in/widgets/log_in_create_account_button.dart';
import 'package:wine/presentation/log_in/widgets/log_in_separator.dart';
import 'package:wine/presentation/log_in/widgets/log_in_social_media_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';
import 'package:wine/utils/responsive/log_in_responsive.dart';

class LogInLayout extends StatelessWidget {
  const LogInLayout({
    required this.navigateTo,
    super.key,
    this.onSignUpButtonPressed,
  });

  final PageRouteInfo<dynamic> navigateTo;

  final VoidCallback? onSignUpButtonPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocListener<LogInBloc, LogInState>(
      listener: (context, state) {
        state.failureOption.when(
          some: (value) => value.when(
            ok: (_) {},
            err: (err) => err.maybeMap(
              auth: (f) => f.f.maybeMap(
                emailAlreadyInUse: (_) async => baseErrorDialog(
                  context,
                  <String>['Email address already in use.'],
                ),
                invalidEmailAndPasswordCombination: (_) async =>
                    baseErrorDialog(
                  context,
                  <String>['Incorrect email or password.'],
                ),
                permissionDenied: (_) async => baseErrorDialog(
                  context,
                  <String>['Forbidden action. Permission denied!'],
                ),
                serverError: (_) async => baseErrorDialog(
                  context,
                  <String>['A problem occurred on our end!'],
                ),
                unexpected: (_) async => baseErrorDialog(
                  context,
                  <String>['An unexpected error occured!'],
                ),
                orElse: () {},
              ),
              sessions: (f) => f.f.maybeMap(
                sessionNotInserted: (_) async => baseErrorDialog(
                  context,
                  <String>['Session could not be updated!'],
                ),
                orElse: () {},
              ),
              user: (f) => f.f.maybeMap(
                permissionDenied: (_) async => baseErrorDialog(
                  context,
                  <String>['Forbidden action. Permission denied!'],
                ),
                serverError: (_) async => baseErrorDialog(
                  context,
                  <String>['A problem occurred on our end!'],
                ),
                unexpected: (_) async => baseErrorDialog(
                  context,
                  <String>['An unexpected error occured!'],
                ),
                userNotFound: (_) async => baseErrorDialog(
                  context,
                  <String>['User was not found!'],
                ),
                orElse: () {},
              ),
              orElse: () {},
            ),
          ),
          none: () {},
        );

        if (state.isAuthenticated) {
          redirectDialog(
            context,
            <String>[
              'You have been successfully authenticated.',
              'You will now be redirected.',
            ],
            onNavigate: () => context
              ..read<AuthBloc>().add(const AuthEvent.authChanged())
              ..router.replace(navigateTo),
            onRouterPop: () => context.router.pop<bool>(true),
          );
        }
      },
      child: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state.isProcessing,
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (onSignUpButtonPressed != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: IconButton(
                          key: const Key('log_in_dialog_back'),
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          icon: const Icon(
                            Icons.close_outlined,
                            color: Colors.black,
                          ),
                          onPressed: context.router.pop,
                          splashColor: Colors.transparent,
                        ),
                      ),
                    Padding(
                      padding: getWelcomeMessagePadding(mediaQuery),
                      child: SizedBox(
                        width: mediaQuery.width,
                        child: const Text(
                          'Log in to access more features.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getEmailAddressPadding(mediaQuery),
                      child: AuthenticationTextField(
                        hintText: 'Email address',
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => context
                            .read<LogInBloc>()
                            .add(LogInEvent.emailAddressChanged(value)),
                        validator: (_) => context
                            .watch<LogInBloc>()
                            .state
                            .emailAddress
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                invalidEmailAddress: (_) =>
                                    'The email address is invalid.',
                                orElse: () => null,
                              ),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 25),
                      child: AuthenticationTextField(
                        hintText: 'Password',
                        obscureText: true,
                        onChanged: (value) => context
                            .read<LogInBloc>()
                            .add(LogInEvent.passwordChanged(value)),
                        validator: (_) => context
                            .watch<LogInBloc>()
                            .state
                            .password
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                invalidPassword: (_) =>
                                    'The password is invalid.',
                                orElse: () => null,
                              ),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 50),
                      child: DefaultButton(
                        color: pastelPink,
                        hasRoundedCorners: true,
                        isProcessing: state.isProcessing,
                        onPressed: state.isProcessing
                            ? null
                            : () => context.read<LogInBloc>().add(
                                  const LogInEvent
                                      .logInWithEmailAndPasswordPressed(),
                                ),
                        title: 'Log in'.toUpperCase(),
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 25),
                      child: GestureDetector(
                        onTap: state.isProcessing ? null : () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: LogInSeparator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          LogInSocialMediaButton(
                            onPressed: state.isProcessing
                                ? null
                                : () => context.read<LogInBloc>().add(
                                      const LogInEvent.logInWithGooglePressed(),
                                    ),
                            icon: LineIcons.googlePlus,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Align(
                        child: LogInCreateAccountButton(
                          onPressed: state.isProcessing
                              ? null
                              : onSignUpButtonPressed ??
                                  () => context.router.push(
                                        SignUpRoute(navigateTo: navigateTo),
                                      ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
