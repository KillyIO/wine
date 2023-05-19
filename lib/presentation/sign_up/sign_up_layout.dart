import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/core/text_fields/authentication_text_field.dart';
import 'package:wine/presentation/sign_up/widgets/sign_up_tos_and_pp_button.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class SignUpLayout extends StatelessWidget {
  /// @nodoc
  const SignUpLayout({
    required this.navigateTo,
    super.key,
    this.onDialogBackButtonPressed,
  });

  /// @nodoc
  final PageRouteInfo<dynamic> navigateTo;

  /// @nodoc
  final VoidCallback? onDialogBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocListener<SignUpBloc, SignUpState>(
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
                usernameAlreadyInUse: (_) async => baseErrorDialog(
                  context,
                  <String>['Username already in use.'],
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
              'You will now be redirected.'
            ],
            () => context
              ..read<AuthBloc>().add(const AuthEvent.authChanged())
              ..router.replace(navigateTo),
          );
        }
      },
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state.isProcessing,
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (onDialogBackButtonPressed != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: IconButton(
                          key: const Key('sign_up_dialog_back_button'),
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          icon: const Icon(
                            Icons.keyboard_backspace_outlined,
                            color: Colors.black,
                          ),
                          onPressed: onDialogBackButtonPressed,
                          splashColor: Colors.transparent,
                        ),
                      ),
                    // SECTION e-mail address
                    Padding(
                      padding: EdgeInsets.only(
                        top: onDialogBackButtonPressed != null ? 25 : 0,
                      ),
                      child: const TextFieldLabel(title: 'EMAIL ADDRESS*'),
                    ),
                    AuthenticationTextField(
                      hintText: 'Email address',
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.emailAddressChanged(value)),
                      validator: (_) => context
                          .watch<SignUpBloc>()
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
                      keyboardType: TextInputType.emailAddress,
                    ),
                    // SECTION password
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFieldLabel(title: 'PASSWORD*'),
                    ),
                    AuthenticationTextField(
                      hintText: 'Password (6+ characters)',
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.passwordChanged(value)),
                      validator: (_) => context
                          .watch<SignUpBloc>()
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
                    // SECTION confirm password
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFieldLabel(title: 'CONFIRM YOUR PASSWORD*'),
                    ),
                    AuthenticationTextField(
                      hintText: 'Confirm your password (6+ characters)',
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.confirmPasswordChanged(value)),
                      validator: (_) => context
                          .watch<SignUpBloc>()
                          .state
                          .confirmPassword
                          .value
                          .match(
                            (_) => null,
                            (err) => err.maybeMap(
                              invalidConfirmPassword: (_) =>
                                  'The confirm password is invalid.',
                              orElse: () => null,
                            ),
                          ),
                    ),
                    // SECTION Username
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFieldLabel(title: 'USERNAME*'),
                    ),
                    AuthenticationTextField(
                      hintText: 'Username (4+ characters)',
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.usernameChanged(value)),
                      validator: (_) => context
                          .watch<SignUpBloc>()
                          .state
                          .username
                          .value
                          .match(
                            (_) => null,
                            (err) => err.maybeMap(
                              invalidUsername: (_) =>
                                  'The username is invalid.',
                              orElse: () => null,
                            ),
                          ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                      child: SignUpTOSAndPPButton(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: DefaultButton(
                        color: pastelPink,
                        title: 'SIGN UP',
                        isProcessing: state.isProcessing,
                        onPressed: state.isProcessing
                            ? null
                            : () => context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.signUpPressed()),
                        width: mediaQuery.width,
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
