import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/presentation/utils/settings/settings_authentication_methods.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SettingsAccountSettings extends StatelessWidget {
  /// @nodoc
  const SettingsAccountSettings({
    Key key,
    @required this.stgsAuthMethods,
    @required this.session,
  }) : super(key: key);

  /// @nodoc
  final SettingsAuthenticationMethods stgsAuthMethods;

  /// @nodoc
  final Session session;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreAuthState) {
        return coreAuthState.isAnonymous
            ? Column(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: const ListTile(
                      title: Text(
                        'ACCOUNT',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () async =>
                        ExtendedNavigator.root.push(Routes.signInPage),
                    title: const Text(
                      'MY ACCOUNT',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: const Text(
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
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: const ListTile(
                      title: Text(
                        'ACCOUNT',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'MY ACCOUNT',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Text(
                      '@${session.username}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    color: Palettes.error,
                    child: ListTile(
                      onTap: stgsAuthMethods.signOutPressed,
                      leading: const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'LOG OUT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
