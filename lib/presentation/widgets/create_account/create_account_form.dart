import 'package:flutter/material.dart';

import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/presentation/utils/create_account/create_account_authentication_methods.dart';
import 'package:wine/presentation/widgets/create_account/create_account_tos_and_pp_button.dart';
import 'package:wine/presentation/widgets/wine_authentication_textfield.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';

/// @nodoc
class CreateAccountForm extends StatelessWidget {
  /// @nodoc
  const CreateAccountForm({
    Key key,
    this.caAuthState,
    this.caAuthMethods,
    this.passwordController,
  }) : super(key: key);

  /// @nodoc
  final CreateAccountAuthenticationState caAuthState;

  /// @nodoc
  final CreateAccountAuthenticationMethods caAuthMethods;

  /// @nodoc
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // SECTION e-mail address
              const WINETextFieldLabel(title: 'EMAIL ADDRESS*'),
              WINEAuthenticationTextField(
                hintText: 'Email address',
                onChanged: caAuthMethods.emailChanged,
                validator: (_) => caAuthMethods.emailValidator(),
                keyboardType: TextInputType.emailAddress,
                isSignInPage: false,
              ),
              const SizedBox(height: 10),
              // SECTION password
              const WINETextFieldLabel(title: 'PASSWORD*'),
              WINEAuthenticationTextField(
                controller: passwordController,
                hintText: 'Password (6+ characters)',
                validator: (_) => caAuthMethods.passwordValidator(),
                obscureText: true,
                isSignInPage: false,
              ),
              const SizedBox(height: 10),
              // SECTION confirm password
              const WINETextFieldLabel(title: 'CONFIRM YOUR PASSWORD*'),
              WINEAuthenticationTextField(
                hintText: 'Confirm your password (6+ characters)',
                onChanged: (value) => caAuthMethods.confirmPasswordChanged(
                  value,
                  passwordController.text,
                ),
                validator: (_) => caAuthMethods.confirmPasswordValidator(),
                obscureText: true,
                isSignInPage: false,
              ),
              const SizedBox(height: 10),
              // SECTION Username
              const WINETextFieldLabel(title: 'USERNAME*'),
              WINEAuthenticationTextField(
                hintText: 'Username',
                onChanged: caAuthMethods.usernameChanged,
                validator: (_) => caAuthMethods.usernameValidator(),
                isSignInPage: false,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CreateAccountTOSAndPPButton(),
              ),
              const SizedBox(height: 30),
              WINEButton(
                title: 'CREATE AN ACCOUNT',
                onPressed: caAuthMethods.createAccount,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
