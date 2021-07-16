import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';
import 'package:wine/presentation/core/misc/section_tile.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class AccountSettingsLayout extends StatelessWidget {
  /// @nodoc
  const AccountSettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        if (state.isLoggedOut) {
          context
            ..read<AuthBloc>().add(const AuthEvent.authChanged())
            ..router.root.navigate(const HomeRoute());
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingsState) {
              return Column(
                children: <Widget>[
                  const SectionTile(title: 'ACCOUNT'),
                  authState.maybeMap(
                    authenticated: (_) => ListTile(
                      title: const Text(
                        'USERNAME',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: Text(
                        '@${settingsState.username}',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    orElse: () => Container(),
                  ),
                  authState.maybeMap(
                    authenticated: (_) => Container(
                      color: error,
                      child: ListTile(
                        onTap: () => context
                            .read<SettingsBloc>()
                            .add(const SettingsEvent.logOutPressed()),
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
                    orElse: () => ListTile(
                      onTap: () => context.router.root.push(const LogInRoute()),
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
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
