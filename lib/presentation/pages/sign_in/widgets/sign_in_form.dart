import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/presentation/pages/sign_in/utils/sign_in_authentication_methods.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_create_account_button.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_separator.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_social_media_button.dart';
import 'package:wine/presentation/widgets/wine_authentication_textfield.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class SignInForm extends StatelessWidget {
  final SignInAuthenticationState siAuthState;
  final SignInAuthenticationMethods siAuthMethods;

  const SignInForm({
    Key key,
    @required this.siAuthState,
    @required this.siAuthMethods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: siAuthState.showErrorMessages,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 100.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Sign in to access more features.',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 75),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: WINEAuthenticationTextField(
                  hintText: 'Email address',
                  onChanged: (value) => siAuthMethods.emailChanged(value),
                  validator: (_) => siAuthMethods.emailValidator(),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: WINEAuthenticationTextField(
                  hintText: 'Password',
                  onChanged: (value) => siAuthMethods.passwordChanged(value),
                  validator: (_) => siAuthMethods.passwordValidator(),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 1.75,
                  child: FlatButton(
                    color: Palettes.pastelPink,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    onPressed: siAuthMethods.signInWithEmailAndPasswordButtonPressed,
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500),
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
                    onPressed: siAuthMethods.signInWithGoogleButtonPressed,
                    icon: FontAwesome.google,
                  )
                ],
              ),
              const SizedBox(height: 50),
              Align(child: SignInCreateAccountButton(onPressed: () => sailor(Constants.createAccountRoute))),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
