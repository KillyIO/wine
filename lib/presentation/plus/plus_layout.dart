import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/plus/widgets/plus_banner.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';

class PlusLayout extends StatelessWidget {
  const PlusLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: maxContentLayoutWidth2,
        ),
        child: Column(
          children: <Widget>[
            const PlusBanner(),
            TileButton(
              key: const Key('plus_library_button'),
              isFirst: true,
              leadingIconData: Icons.collections_bookmark_outlined,
              title: 'LIBRARY',
              trailingIconData: Icons.keyboard_arrow_right,
              onPressed: () => context.router.push(const LibraryRoute()),
            ),
            TileButton(
              key: const Key('plus_settings_button'),
              leadingIconData: LineIcons.cog,
              onPressed: () =>
                  context.router.push(const SettingsWrapperRoute()),
              title: 'SETTINGS',
              trailingIconData: Icons.keyboard_arrow_right,
            ),
            TileButton(
              key: const Key('plus_about_button'),
              leadingIconData: Icons.info_outline_rounded,
              onPressed: () {},
              title: 'ABOUT',
              trailingIconData: Icons.keyboard_arrow_right,
            ),
          ],
        ),
      ),
    );
  }
}
