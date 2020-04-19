import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/themes.dart';
import 'package:wine/widgets/error_dialog.dart';

class CompletePage extends StatefulWidget {
  @override
  _CompletePageState createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {
  TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    _usernameController.addListener(_onUsernameChanged);
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

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
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocListener<AccountBloc, AccountState>(
            listener: (context, state) {
              if (state is STESubmittingUsername) {
                Flushbar(
                  message: 'Submitting your username',
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
              if (state is STEUpdatedUsername) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/splash', ModalRoute.withName('/'));
              }
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
                        padding:
                            const EdgeInsets.only(bottom: 50.0, top: 200.0),
                        child: Text(
                          'Choose a unique username to complete your profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          hintText: 'Choose a username',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, top: 25.0),
                        child: Container(
                          child: FlatButton(
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            color: Color(0xFF08C6AB),
                            onPressed: () =>
                                BlocProvider.of<AccountBloc>(context)
                                  ..add(EVTOnSubmitUsernameClicked(
                                      username: _usernameController.text)),
                          ),
                          height: 50.0,
                          width: double.infinity,
                        ),
                      )
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
