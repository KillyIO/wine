import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';

/// @nodoc
class SettingsLayout extends StatelessWidget {
  /// @nodoc
  const SettingsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: maxContentLayoutWidth2,
        ),
        child: ListView(
          children: <Widget>[
            TileButton(
              leadingIconData: Icons.account_circle_outlined,
              title: 'ACCOUNT',
              trailingIconData: Icons.keyboard_arrow_right,
              onPressed: () =>
                  context.router.push(const SettingsAccountRoute()),
            ),
            TileButton(
              leadingIconData: LineIcons.book,
              title: 'TREE',
              trailingIconData: Icons.keyboard_arrow_right,
              onPressed: () => context.router.push(const SettingsTreeRoute()),
            ),
            TileButton(
              leadingIconData: LineIcons.bookOpen,
              title: 'BRANCH',
              trailingIconData: Icons.keyboard_arrow_right,
              onPressed: () => context.router.push(const SettingsBranchRoute()),
            )
          ],
        ),
      ),
    );
  }
}
