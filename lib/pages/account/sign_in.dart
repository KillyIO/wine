import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/models/route_transition.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/themes.dart';
import 'package:wine/widgets/error_dialog.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {}

  void _onPasswordChanged() {}

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
            listener: (context, state) {
              if (state is STEAuthenticating) {
                Flushbar(
                  message: 'Authentication in progress, please wait',
                  duration: Duration(seconds: 3),
                  icon: Icon(
                    Feather.info,
                    color: Colors.blueAccent,
                  ),
                  flushbarStyle: FlushbarStyle.FLOATING,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  leftBarIndicatorColor: Colors.blueAccent,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                )..show(context);
              }
              if (state is STENavigating) {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.of(context).pushNamedAndRemoveUntil(
                    state.route, ModalRoute.withName('/'),
                    arguments: RouteTransition.fade);
              }
              if (state is STENavigated) {}
              if (state is STEAccountError) {
                Methods.showCustomDialog(
                  context: context,
                  builder: (_) => ErrorDialog(
                    message: state.error.message,
                    onPressed: () =>
                        Navigator.of(context, rootNavigator: true).pop(),
                  ),
                );
              }
            },
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ScrollConfiguration(
                  behavior: ScrollBehavior(),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0, top: 150.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Log in to access more features.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            labelText: 'Email address',
                            labelStyle: TextStyle(
                              color: Color(0xFF08C6AB),
                            ),
                            prefixIcon: Icon(
                              Feather.mail,
                              color: Color(0xFF08C6AB),
                            ),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xFF08C6AB),
                            ),
                            prefixIcon: Icon(
                              Feather.lock,
                              color: Color(0xFF08C6AB),
                            ),
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
                      ),
                      // SECTION buttons
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Expanded(
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
                                  color: Color(0xFF212B38),
                                  onPressed: () {
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    Navigator.of(context)
                                        .pushNamed('/account/sign-up');
                                  },
                                ),
                                height: 50.0,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Container(
                                child: FlatButton(
                                  child: Text(
                                    'LOG IN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  color: Color(0xFF08C6AB),
                                  onPressed: () =>
                                      BlocProvider.of<AccountBloc>(context)
                                        ..add(EVTOnLogInClicked(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        )),
                                ),
                                height: 50.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: GestureDetector(
                          child: Text(
                            'Forgot password?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              color: Colors.black26,
                              height: 1.0,
                              width: 100.0,
                            ),
                            Text(
                              'OR LOG IN WITH',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              color: Colors.black26,
                              height: 1.0,
                              width: 100.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 75.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                              child: Icon(
                                FontAwesome.google,
                                color: Color(0xFF37465B),
                                size: 30.0,
                              ),
                              onPressed: () =>
                                  BlocProvider.of<AccountBloc>(context)
                                    ..add(EVTOnSignInWithGoogleClicked()),
                              padding: const EdgeInsets.all(10.0),
                              shape: CircleBorder(side: BorderSide(width: 2.0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
