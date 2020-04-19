import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/models/route_transition.dart';
import 'package:wine/pages/account/widgets/terms_and_policies.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/themes.dart';
import 'package:wine/widgets/error_dialog.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

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

  void _onEmailChanged() {}

  void _onPasswordChanged() {}

  void _onConfirmPasswordChanged() {}

  void _onUsernameChanged() {}

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
              preferredSize: Size.fromHeight(0.0),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: GestureDetector(
                child: Image.asset(
                  'assets/img/back_button.png',
                  fit: BoxFit.contain,
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocListener<AccountBloc, AccountState>(
            listener: (context, state) {},
            child: Form(
              child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: ListView(
                  children: <Widget>[
                    // SECTION e-mail address
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 20.0, top: 25.0),
                        child: Text(
                          'EMAIL ADDRESS',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xFF08C6AB),
                          ),
                        ),
                      ),
                    ),
                    // SECTION password
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 20.0, top: 25.0),
                        child: Text(
                          'PASSWORD',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password (6+ characters)',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xFF08C6AB),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    // SECTION confirm password
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 20.0, top: 25.0),
                        child: Text(
                          'CONFIRM YOUR PASSWORD',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        hintText: 'Confirm your password (6+ characters)',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xFF08C6AB),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    // SECTION Username
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 20.0, top: 25.0),
                        child: Text(
                          'USERNAME',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'Choose a username',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 3.0,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 3.0,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xFF08C6AB),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0, top: 30.0),
                      child: TermsAndPolicies(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        child: FlatButton(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          color: Color(0xFF08C6AB),
                          onPressed: () => BlocProvider.of<AccountBloc>(context)
                            ..add(EVTOnSignUpClicked(
                              email: _emailController.text,
                              password: _passwordController.text,
                              confirmPassword: _confirmPasswordController.text,
                              username: _usernameController.text,
                            )),
                        ),
                        height: 60.0,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      value: Themes.wineLightTheme(),
    );
  }
}
