import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/routes/router.dart';

/// @nodoc
class SettingsLayout extends StatelessWidget {
  /// @nodoc
  const SettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return TileButton(
                leadingIconData: Icons.account_circle_outlined,
                title: 'ACCOUNT',
                trailingIconData: Icons.keyboard_arrow_right,
                onPressed: () => state.maybeMap(
                  authenticated: (_) async {},
                  // TODO add push to account settings page
                  orElse: () => context.router.root.push(const LogInRoute()),
                ),
              );
            },
          ),
          TileButton(
            leadingIconData: LineIcons.book,
            title: 'SERIES',
            trailingIconData: Icons.keyboard_arrow_right,
            // TODO add push series settings page
            onPressed: () {},
          ),
          TileButton(
            leadingIconData: LineIcons.bookOpen,
            title: 'CHAPTER',
            trailingIconData: Icons.keyboard_arrow_right,
            // TODO add push chapter settings page
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
