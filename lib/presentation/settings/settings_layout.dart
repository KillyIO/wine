import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/utils/assets/icons.dart';

/// @nodoc
class SettingsLayout extends StatelessWidget {
  /// @nodoc
  const SettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(41.5),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(
              color: Colors.black,
              height: 2.0,
            ),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: AssetButton(
              imagePath: backIcon,
              onPressed: () async => context.router.pop(),
            ),
          ),
          title: const Text(
            'SETTINGS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: SafeArea(
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
                    orElse: () async {},
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
