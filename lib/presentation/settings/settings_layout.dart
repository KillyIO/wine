import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/functions.dart';

/// @nodoc
class SettingsLayout extends StatelessWidget {
  /// @nodoc
  const SettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.failureOption.whenSome(
          (some) => some.whenErr(
            (err) => err.maybeMap(
              auth: (f) => f.f.maybeMap(
                unableToSignOut: (_) async => baseErrorDialog(
                  context,
                  <String>['We were unable to log you out!'],
                ),
                serverError: (_) async => baseErrorDialog(
                  context,
                  <String>['A problem occurred on our end!'],
                ),
                unexpected: (_) async => baseErrorDialog(
                  context,
                  <String>['An unexpected error occured!'],
                ),
                orElse: () {},
              ),
              sessions: (f) => f.f.maybeMap(
                sessionNotCreated: (_) async => baseErrorDialog(
                  context,
                  <String>['Session could not be created!'],
                ),
                sessionNotDeleted: (_) async => baseErrorDialog(
                  context,
                  <String>['Session could not be deleted!'],
                ),
                sessionNotFound: (_) async => baseErrorDialog(
                  context,
                  <String>['Session was not found!'],
                ),
                orElse: () {},
              ),
              settings: (f) => f.f.maybeMap(
                settingsNotFound: (_) async => baseErrorDialog(
                  context,
                  <String>['Settings were not found!'],
                ),
                settingsNotInitialized: (_) async => baseErrorDialog(
                  context,
                  <String>['Settings could not be initialized!'],
                ),
                orElse: () {},
              ),
              orElse: () {},
            ),
          ),
        );
      },
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return TileButton(
                  leadingIconData: Icons.account_circle_outlined,
                  title: 'ACCOUNT',
                  trailingIconData: Icons.keyboard_arrow_right,
                  onPressed: () => state.maybeMap(
                    authenticated: (_) =>
                        context.router.push(const AccountSettingsRoute()),
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
      ),
    );
  }
}
