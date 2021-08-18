import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/plus/widgets/plus_banner.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/presentation/routes/router.dart';

/// @nodoc
class PlusLayout extends StatelessWidget {
  /// @nodoc
  const PlusLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const PlusBanner(),
        TileButton(
          key: const Key('plus_library_button'),
          isFirst: true,
          leadingIconData: Icons.collections_bookmark_outlined,
          title: 'LIBRARY',
          trailingIconData: Icons.keyboard_arrow_right,
          onPressed: () => context.router.root.push(const LibraryRoute()),
        ),
        // BlocBuilder<AuthBloc, AuthState>(
        //   builder: (context, state) {
        //     return TileButton(
        //       key: const Key('plus_library_button'),
        //       isFirst: true,
        //       leadingIconData: Icons.collections_bookmark_outlined,
        //       title: 'LIBRARY',
        //       trailingIconData: Icons.keyboard_arrow_right,
        //       onPressed: () => state.maybeMap(
        //         authenticated: (_) =>
        //             context.router.root.push(const LibraryRoute()),
        //         orElse: () => context.router.root.push(const LogInRoute()),
        //       ),
        //     );
        //   },
        // ),
        TileButton(
          key: const Key('plus_settings_button'),
          leadingIconData: LineIcons.cog,
          onPressed: () => context.router.root.push(const SettingsWrapper()),
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
    );
  }
}
