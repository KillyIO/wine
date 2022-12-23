import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';
import 'package:wine/presentation/core/common/section_tile.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SettingsAccountLayout extends StatelessWidget {
  /// @nodoc
  const SettingsAccountLayout({super.key});

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
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              const SectionTile(title: 'ACCOUNT'),
              ListTile(
                title: const Text(
                  'USERNAME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Text(
                  '@${state.username}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ColoredBox(
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
                      fontSize: 15,
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
      ),
    );
  }
}
