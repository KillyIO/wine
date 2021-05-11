import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/plus/widgets/plus_banner.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';
import 'package:wine/utils/assets/icons.dart';

/// @nodoc
class PlusLayout extends StatelessWidget {
  /// @nodoc
  const PlusLayout({Key? key}) : super(key: key);

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
            child: Container(color: Colors.black, height: 2.0),
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
              key: const Key('plus_layout_back_button'),
              imagePath: backIcon,
              onPressed: () async => context.router.pop(),
            ),
          ),
          title: const Text(
            'PLUS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const PlusBanner(),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return TileButton(
                key: const Key('plus_library_button'),
                isFirst: true,
                leadingIconData: Icons.collections_bookmark_outlined,
                title: 'LIBRARY',
                trailingIconData: Icons.keyboard_arrow_right,
                onPressed: () => state.maybeMap(
                  authenticated: (_) async {},
                  orElse: () async {},
                ),
              );
            },
          ),
          TileButton(
            key: const Key('plus_settings_button'),
            leadingIconData: Icons.settings_outlined,
            onPressed: () {},
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
    );
  }
}
