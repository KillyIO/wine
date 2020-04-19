import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/models/session.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/themes.dart';
import 'package:wine/widgets/error_dialog.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();

  Session _session;

  @override
  void initState() {
    _session = _localStorageRepository?.getSession();
    super.initState();
  }

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
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
            title: Text(
              'ACCOUNT',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocListener<AccountBloc, AccountState>(
            listener: (context, state) {
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
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
        ),
      ),
      value: Themes.wineLightTheme(),
    );
  }
}
