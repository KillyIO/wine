import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';

import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/presentation/core/buttons/animation_button.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/utils/assets/animations.dart';
import 'package:wine/utils/assets/icons.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  HomeAppBar({
    Key key,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
        child: AssetButton(
          key: const Key('filter_button'),
          imagePath: filtersIcon,
          onPressed: () => context
              .read<HomeNavigationBloc>()
              .add(const HomeNavigationEvent.leftDrawerIconPressed()),
        ),
      ),
      actions: <Widget>[
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              authenticated: (_) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: AssetButton(
                  key: const Key('new_series_button'),
                  imagePath: plusIcon,
                  onPressed: () {},
                ),
              ),
              orElse: () => Container(),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: AnimationButton(
            key: const Key('menu_button'),
            animation: Scaffold.of(context).isEndDrawerOpen
                ? 'menu_to_x'
                : 'x_to_menu',
            filename: menuAnimation,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
