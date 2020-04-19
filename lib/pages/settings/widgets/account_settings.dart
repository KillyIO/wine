import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/blocs/settings/settings_bloc.dart';
import 'package:wine/models/session.dart';
import 'package:wine/repositories/local_storage_repository.dart';

class AccountSettings extends StatefulWidget {
  final LocalStorageRepository localStorageRepository;

  AccountSettings({this.localStorageRepository});

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  Session _session;

  @override
  void initState() {
    _session = widget.localStorageRepository?.getSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _session.isAnonymous == true
        ? Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12)),
                ),
              ),
              ListTile(
                onTap: () =>
                    Navigator.of(context).pushNamed('/account/sign-in'),
                title: Text(
                  'MY ACCOUNT',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Text(
                  'PLEASE LOG IN',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12)),
                ),
              ),
              ListTile(
                onTap: () => Navigator.of(context).pushNamed('/account'),
                title: Text(
                  'MY ACCOUNT',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Text(
                  _session.username,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                color: Color(0xFFEF4648),
                child: ListTile(
                  onTap: () => BlocProvider.of<SettingsBloc>(context)
                    ..add(EVTOnLogOutClicked()),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    'LOG OUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
  }
}
