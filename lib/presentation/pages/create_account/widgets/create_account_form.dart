import 'package:flutter/material.dart';

import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/presentation/pages/create_account/utils/create_account_authentication_methods.dart';
import 'package:wine/presentation/pages/create_account/widgets/create_account_tos_and_pp_button.dart';
import 'package:wine/presentation/widgets/wine_authentication_textfield.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';

class CreateAccountForm extends StatelessWidget {
  final CreateAccountAuthenticationState caAuthState;
  final CreateAccountAuthenticationMethods caAuthMethods;
  final TextEditingController passwordController;

  const CreateAccountForm({
    Key key,
    this.caAuthState,
    this.caAuthMethods,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: caAuthState.showErrorMessages,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // SECTION e-mail address
              const WINETextFieldLabel(title: 'EMAIL ADDRESS*'),
              WINEAuthenticationTextField(
                hintText: 'Email address',
                onChanged: (value) => caAuthMethods.emailChanged(value),
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
                onChanged: (value) => caAuthMethods.usernameChanged(value),
                validator: (_) => caAuthMethods.usernameValidator(),
                isSignInPage: false,
              ),
              const SizedBox(height: 25),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: CreateAccountTOSAndPPButton()),
              const SizedBox(height: 30),
              WINEButton(title: 'CREATE AN ACCOUNT', onPressed: caAuthMethods.createAccount),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}