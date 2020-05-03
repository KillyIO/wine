import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/presentation/pages/account/widgets/terms_of_service_and_privacy_policy.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/error_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage>
    with TickerProviderStateMixin {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    _confirmPasswordController.addListener(_onConfirmPasswordChanged);
    _usernameController.addListener(_onUsernameChanged);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  void _onEmailChanged() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(EmailChanged(_emailController.text));

  void _onPasswordChanged() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(PasswordChanged(_passwordController.text));

  void _onConfirmPasswordChanged() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(ConfirmPasswordChanged(_confirmPasswordController.text));

  void _onUsernameChanged() =>
      context.bloc<CreateAccountAuthenticationBloc>().add(UsernameChanged(
            _usernameController.text,
          ));

  void _backButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: ImageBackButton(
                onPressed: _backButtonPressed,
                color: Palettes.darkCobaltBlue,
              ),
            ),
          ),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<CreateAccountAuthenticationBloc,
                CreateAccountAuthenticationState>(
              listener: (context, state) {
                state.authenticationFailureOrSuccessOption.fold(
                  () {},
                  (some) => some.fold(
                    (failure) {
                      failure.map(
                        cancelledByUser: (_) {},
                        serverError: (_) => customShowDialog(
                          context: context,
                          builder: (_) => ErrorDialog(
                            message: 'An unexpected error occured!',
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ),
                        emailAlreadyInUse: (_) => customShowDialog(
                          context: context,
                          builder: (_) => ErrorDialog(
                            message:
                                'The email address entered is already in use.',
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ),
                        invalidEmailAndPasswordCombination: (_) {},
                        usernameAlreadyInUse: (_) => customShowDialog(
                          context: context,
                          builder: (_) => ErrorDialog(
                            message: 'The username entered is already in use.',
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ),
                        unableToSignOut: (_) {},
                      );
                    },
                    (right) {
                      if (right is User) {
                        context
                            .bloc<CreateAccountDatabaseBloc>()
                            .add(AccountCreated(right));
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
                    (failure) => customShowDialog(
                      context: context,
                      builder: (_) => ErrorDialog(
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
                      context
                          .bloc<CoreAuthenticationBloc>()
                          .add(const PageLaunched());
                      context
                          .bloc<HomeNavigationBloc>()
                          .add(const ResetHomeNavigationBloc());
                    },
                  ),
                );
              },
            )
          ],
          child: BlocBuilder<CreateAccountAuthenticationBloc,
              CreateAccountAuthenticationState>(
            builder: (context, authenticationState) {
              return BlocBuilder<CreateAccountDatabaseBloc,
                  CreateAccountDatabaseState>(
                builder: (context, databaseState) {
                  return SafeArea(
                    child: Stack(
                      children: <Widget>[
                        Form(
                          child: ScrollConfiguration(
                            behavior: const ScrollBehavior(),
                            child: ListView(
                              children: <Widget>[
                                // SECTION e-mail address
                                Container(
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.0,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10.0, left: 20.0, top: 25.0),
                                      child: Text(
                                        'EMAIL ADDRESS*',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _emailController,
                                  cursorColor: Palettes.strongCyan,
                                  decoration: InputDecoration(
                                    hintText: 'Email address',
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Palettes.strongCyan,
                                      ),
                                    ),
                                  ),
                                  autovalidate: true,
                                  validator: (_) => authenticationState
                                          .showEmailErrorMessage
                                      ? 'The email address entered is invalid.'
                                      : null,
                                ),
                                // SECTION password
                                Container(
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.0,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10.0),
                                      child: Text(
                                        'PASSWORD*',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  cursorColor: Palettes.strongCyan,
                                  decoration: InputDecoration(
                                    hintText: 'Password (6+ characters)',
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Palettes.strongCyan,
                                      ),
                                    ),
                                  ),
                                  obscureText: true,
                                  autovalidate: true,
                                  validator: (_) => authenticationState
                                          .showPasswordErrorMessage
                                      ? 'The password entered is invalid.'
                                      : null,
                                ),
                                // SECTION confirm password
                                Container(
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.0,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10.0),
                                      child: Text(
                                        'CONFIRM YOUR PASSWORD*',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _confirmPasswordController,
                                  cursorColor: Palettes.strongCyan,
                                  decoration: InputDecoration(
                                    hintText:
                                        'Confirm your password (6+ characters)',
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Palettes.strongCyan,
                                      ),
                                    ),
                                  ),
                                  obscureText: true,
                                  autovalidate: true,
                                  validator: (_) => authenticationState
                                          .showConfirmPasswordErrorMessage
                                      ? 'The password entered is invalid.'
                                      : null,
                                ),
                                // SECTION Username
                                Container(
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.0,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10.0),
                                      child: Text(
                                        'USERNAME*',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _usernameController,
                                  cursorColor: Palettes.strongCyan,
                                  decoration: InputDecoration(
                                    hintText: 'Choose a username',
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2.0,
                                        color: Palettes.strongCyan,
                                      ),
                                    ),
                                  ),
                                  autovalidate: true,
                                  validator: (_) => authenticationState
                                          .showUsernameErrorMessage
                                      ? 'The username entered is invalid.'
                                      : null,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 50.0,
                                    left: 20.0,
                                    right: 20.0,
                                    top: 30.0,
                                  ),
                                  child: TermsOfServiceAndPrivacyPolicy(),
                                ),
                                Container(
                                  height: 60.0,
                                  width: double.infinity,
                                  child: FlatButton(
                                    color: Palettes.strongCyan,
                                    onPressed: () => context
                                        .bloc<CreateAccountAuthenticationBloc>()
                                        .add(const CreateAccount()),
                                    child: Text(
                                      'CREATE AN ACCOUNT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
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
                              height: authenticationState.isSubmitting ||
                                      databaseState.isUpdating
                                  ? MediaQuery.of(context).size.height
                                  : 0.0,
                              child: Center(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Palettes.darkCyanBlue,
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
        ),
      ),
    );
  }
}
