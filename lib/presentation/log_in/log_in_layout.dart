import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/text_fields/authentication_text_field.dart';
import 'package:wine/presentation/log_in/widgets/log_in_create_account_button.dart';
import 'package:wine/presentation/log_in/widgets/log_in_separator.dart';
import 'package:wine/presentation/log_in/widgets/log_in_social_media_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions.dart';

/// @nodoc
class LogInLayout extends StatelessWidget {
  /// @nodoc
  const LogInLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogInBloc, LogInState>(
      listener: (context, state) {
        state.failureOption.whenSome(
          (some) => some.whenErr(
            (err) => err.maybeMap(
              auth: (f) => f.f.maybeMap(
                invalidEmailAndPasswordCombination: (_) async =>
                    baseErrorDialog(
                  context,
                  <String>['Incorrect email or password.'],
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
                orElse: () {},
              ),
              orElse: () {},
            ),
          ),
        );

        if (state.isAuthenticated) {
          context
            ..read<AuthBloc>().add(const AuthEvent.authChanged())
            ..router.root.navigate(const HomeRoute());
        }
      },
      child: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return SafeArea(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, top: 5.h),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Log in to access more features.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 6.5.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.5.h),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: AuthenticationTextField(
                        hintText: 'Email address',
                        onChanged: (value) => context
                            .read<LogInBloc>()
                            .add(LogInEvent.emailAddressChanged(value)),
                        validator: (_) => context
                            .read<LogInBloc>()
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
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: AuthenticationTextField(
                        hintText: 'Password',
                        onChanged: (value) => context
                            .read<LogInBloc>()
                            .add(LogInEvent.passwordChanged(value)),
                        validator: (_) => context
                            .read<LogInBloc>()
                            .state
                            .password
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                  invalidPassword: (_) =>
                                      'The password is invalid.',
                                  orElse: () => null),
                            ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 2.5.h),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: DefaultButton(
                        color: pastelPink,
                        fontSize: 6.5.sp,
                        hasRoundedCorners: true,
                        height: 3.5.h,
                        onPressed: state.isProcessing
                            ? null
                            : () => context.read<LogInBloc>().add(
                                const LogInEvent
                                    .logInWithEmailAndPasswordPressed()),
                        title: 'Log in'.toUpperCase(),
                        width: 20.w,
                      ),
                    ),
                    SizedBox(height: 1.75.h),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: GestureDetector(
                        onTap: state.isProcessing ? null : () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 4.5.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.05.w,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.25.h),
                    const LogInSeparator(),
                    SizedBox(height: 2.25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        LogInSocialMediaButton(
                          onPressed: state.isProcessing
                              ? null
                              : () => context.read<LogInBloc>().add(
                                  const LogInEvent.logInWithGooglePressed()),
                          icon: LineIcons.googlePlus,
                        )
                      ],
                    ),
                    SizedBox(height: 2.5.h),
                    Align(
                      child: LogInCreateAccountButton(
                        onPressed: state.isProcessing
                            ? null
                            : () =>
                                context.router.root.push(const SignUpRoute()),
                      ),
                    ),
                    SizedBox(height: 2.5.h),
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
