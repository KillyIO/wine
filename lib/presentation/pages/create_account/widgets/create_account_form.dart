import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/presentation/pages/create_account/widgets/create_account_textfield_label.dart';
import 'package:wine/presentation/pages/create_account/widgets/create_account_tos_and_pp_button.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class CreateAccountForm extends StatefulWidget {
  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm>
    with TickerProviderStateMixin {
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _onPasswordChanged() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.passwordChanged(
        _passwordController.text,
      ));

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CreateAccountAuthenticationBloc,
            CreateAccountAuthenticationState>(
          listener: (context, state) {
            state.authenticationFailureOrSuccessOption.fold(
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
                  emailAlreadyInUse: (_) => wineShowDialog(
                    context: context,
                    builder: (_) => WINEErrorDialog(
                      message: 'The email address entered is already in use.',
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ),
                  usernameAlreadyInUse: (_) => wineShowDialog(
                    context: context,
                    builder: (_) => WINEErrorDialog(
                      message: 'The username entered is already in use.',
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ),
                  orElse: null,
                ),
                (success) {
                  if (success is User) {
                    context.bloc<CreateAccountDatabaseBloc>().add(
                        CreateAccountDatabaseEvent.accountCreated(success));
                  }
                },
              ),
            );
          },
        ),
        BlocListener<CreateAccountDatabaseBloc, CreateAccountDatabaseState>(
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
                (_) => sailor.navigate(
                  Constants.verifyEmailRoute,
                  navigationType: NavigationType.pushAndRemoveUntil,
                  removeUntilPredicate: (_) => false,
                ),
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<CreateAccountAuthenticationBloc,
          CreateAccountAuthenticationState>(
        builder: (context, caAuthState) {
          return BlocBuilder<CreateAccountDatabaseBloc,
              CreateAccountDatabaseState>(
            builder: (context, caDbState) {
              return SafeArea(
                child: Stack(
                  children: <Widget>[
                    Form(
                      autovalidate: caAuthState.showErrorMessages,
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior(),
                        child: ListView(
                          children: <Widget>[
                            // SECTION e-mail address
                            const CreateAccountTextFieldLabel(
                              title: 'EMAIL ADDRESS*',
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email address',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
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
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .add(CreateAccountAuthenticationEvent
                                      .emailChanged(value)),
                              validator: (_) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
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
                            const SizedBox(height: 10),
                            // SECTION password
                            const CreateAccountTextFieldLabel(
                              title: 'PASSWORD*',
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password (6+ characters)',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
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
                              obscureText: true,
                              validator: (_) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
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
                            const SizedBox(height: 10),
                            // SECTION confirm password
                            const CreateAccountTextFieldLabel(
                              title: 'CONFIRM YOUR PASSWORD*',
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText:
                                    'Confirm your password (6+ characters)',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
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
                              autocorrect: false,
                              obscureText: true,
                              onChanged: (value) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .add(CreateAccountAuthenticationEvent
                                      .confirmPasswordChanged(
                                          value, _passwordController.text)),
                              validator: (_) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .state
                                  .confirmPassword
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        invalidConfirmPassword: (_) =>
                                            'The confirm password is invalid.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 10),
                            // SECTION Username
                            const CreateAccountTextFieldLabel(
                              title: 'USERNAME*',
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Username',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
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
                              autocorrect: false,
                              onChanged: (value) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .add(CreateAccountAuthenticationEvent
                                      .usernameChanged(value)),
                              validator: (_) => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .state
                                  .username
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        invalidUsername: (_) =>
                                            'The username is invalid.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 25),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: CreateAccountTOSAndPPButton(),
                            ),
                            const SizedBox(height: 30),
                            WINEButton(
                              title: 'CREATE AN ACCOUNT',
                              onPressed: () => context
                                  .bloc<CreateAccountAuthenticationBloc>()
                                  .add(const CreateAccountAuthenticationEvent
                                      .createAccount()),
                            ),
                            const SizedBox(height: 20),
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
                          height:
                              caAuthState.isSubmitting || caDbState.isUpdating
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
