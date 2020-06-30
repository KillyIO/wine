import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class SettingsAccountSettings extends StatefulWidget {
  final Session session;

  const SettingsAccountSettings({
    Key key,
    this.session,
  }) : super(key: key);

  @override
  _SettingsAccountSettingsState createState() => _SettingsAccountSettingsState();
}

class _SettingsAccountSettingsState extends State<SettingsAccountSettings> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreAuthState) {
        return coreAuthState.isAnonymous
            ? Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
                    child: ListTile(
                      title: Text('ACCOUNT', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  ListTile(
                    onTap: () => sailor(Constants.signInRoute),
                    title: const Text(
                      'MY ACCOUNT',
                      style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w300),
                    ),
                    trailing: Text(
                      'PLEASE LOG IN',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              )
            : Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
                    child: ListTile(
                      title: Text(
                        'ACCOUNT',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'MY ACCOUNT',
                      style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w300),
                    ),
                    trailing: Text(
                      '@${widget.session.username}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    color: Palettes.error,
                    child: ListTile(
                      onTap: () => context
                          .bloc<SettingsAuthenticationBloc>()
                          .add(const SettingsAuthenticationEvent.signOutPressedEVT()),
                      leading: Icon(Icons.exit_to_app, color: Colors.white),
                      title: Text(
                        'LOG OUT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
