import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  HomeAppBar({
    Key? key,
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
      leading: Builder(
        builder: (context) {
          return IconButton(
            key: const Key('filter_button'),
            icon: const Icon(
              LineIcons.horizontalSliders,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: Scaffold.of(context).openDrawer,
          );
        },
      ),
      actions: [
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.maybeMap(
              authenticated: (_) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  key: const Key('new_series_button'),
                  icon: const Icon(
                    LineIcons.plus,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ),
              orElse: () => Container(),
            );
          },
        ),
        Builder(
          builder: (context) {
            return IconButton(
              key: const Key('menu_button_closed'),
              icon: const Icon(
                LineIcons.bars,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: Scaffold.of(context).openEndDrawer,
            );
          },
        ),
      ],
    );
  }
}
