import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/core/text_fields/authentication_text_field.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/sign_up/widgets/sign_up_tos_and_pp_button.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class SignUpLayout extends StatelessWidget {
  /// @nodoc
  const SignUpLayout({
    Key? key,
    this.onWebBackButtonPressed,
  }) : super(key: key);

  /// @nodoc
  final VoidCallback? onWebBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.failureOption.whenSome(
          (some) => some.whenErr(
            (err) => err.maybeMap(
              auth: (f) => f.f.maybeMap(
                emailAlreadyInUse: (_) async => baseErrorDialog(
                  context,
                  <String>['Email address already in use.'],
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
                sessionNotUpdated: (_) async => baseErrorDialog(
                  context,
                  <String>['Session could not be updated!'],
                ),
                orElse: () {},
              ),
              user: (f) => f.f.maybeMap(
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
              ..router.root.navigate(const PlusRoute())
              ..router.root.push(const LibraryRoute()),
          );
        }
      },
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return SafeArea(
            child: AbsorbPointer(
              absorbing: state.isProcessing,
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (onWebBackButtonPressed != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: AssetButton(
                            key: const Key('web_sign_up_back_button'),
                            imagePath: backIcon,
                            onPressed: onWebBackButtonPressed,
                          ),
                        ),
                      // SECTION e-mail address
                      const TextFieldLabel(title: 'EMAIL ADDRESS*'),
                      AuthenticationTextField(
                        hintText: 'Email address',
                        onChanged: (value) => context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.emailAddressChanged(value)),
                        validator: (_) => context
                            .read<SignUpBloc>()
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
                      const SizedBox(height: 10),
                      // SECTION password
                      const TextFieldLabel(title: 'PASSWORD*'),
                      AuthenticationTextField(
                        hintText: 'Password (6+ characters)',
                        obscureText: true,
                        onChanged: (value) => context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.passwordChanged(value)),
                        validator: (_) => context
                            .read<SignUpBloc>()
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
                      const SizedBox(height: 10),
                      // SECTION confirm password
                      const TextFieldLabel(title: 'CONFIRM YOUR PASSWORD*'),
                      AuthenticationTextField(
                        hintText: 'Confirm your password (6+ characters)',
                        obscureText: true,
                        onChanged: (value) => context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.confirmPasswordChanged(value)),
                        validator: (_) => context
                            .read<SignUpBloc>()
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
                      const SizedBox(height: 10),
                      // SECTION Username
                      const TextFieldLabel(title: 'USERNAME*'),
                      AuthenticationTextField(
                        hintText: 'Username (4+ characters)',
                        onChanged: (value) => context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.usernameChanged(value)),
                        validator: (_) => context
                            .read<SignUpBloc>()
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
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SignUpTOSAndPPButton(),
                      ),
                      const SizedBox(height: 30),
                      DefaultButton(
                        color: pastelPink,
                        title: 'SIGN UP',
                        isProcessing: state.isProcessing,
                        onPressed: state.isProcessing
                            ? null
                            : () => context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.signUpPressed()),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
