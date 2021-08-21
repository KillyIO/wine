import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class SettingsLayout extends StatelessWidget {
  /// @nodoc
  const SettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
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
                onPressed: () => handleAuthGuardedNavigation(
                  context,
                  const AccountSettingsRoute(),
                ),
              ),
              TileButton(
                leadingIconData: LineIcons.book,
                title: 'SERIES',
                trailingIconData: Icons.keyboard_arrow_right,
                // TODO add push series settings page
                onPressed: () =>
                    context.router.push(const SeriesSettingsRoute()),
              ),
              TileButton(
                leadingIconData: LineIcons.bookOpen,
                title: 'CHAPTER',
                trailingIconData: Icons.keyboard_arrow_right,
                // TODO add push chapter settings page
                onPressed: () =>
                    context.router.push(const ChapterSettingsRoute()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
