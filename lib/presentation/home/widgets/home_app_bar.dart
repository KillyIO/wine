import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/utils/constants/core.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  const HomeAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(defaultAppBarHeight),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: Colors.black, height: 2),
      ),
      brightness: Brightness.light,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Builder(
          builder: (context) {
            return IconButton(
              key: const Key('filter_button'),
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              icon: const Icon(
                LineIcons.horizontalSliders,
                color: Colors.black,
              ),
              onPressed: Scaffold.of(context).openDrawer,
              splashColor: Colors.transparent,
            );
          },
        ),
      ),
      leadingWidth: defaultToolbarItemWidth,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            key: const Key('new_series_button'),
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            icon: const Icon(
              LineIcons.plus,
              color: Colors.black,
            ),
            onPressed: () {},
            splashColor: Colors.transparent,
          ),
        ),
        // BlocBuilder<AuthBloc, AuthState>(
        //   builder: (context, state) {
        //     return state.maybeMap(
        //       authenticated: (_) => Padding(
        //         padding: const EdgeInsets.only(right: 20),
        //         child: IconButton(
        //           key: const Key('new_series_button'),
        //           focusColor: Colors.transparent,
        //           icon: const Icon(
        //             LineIcons.plus,
        //             color: Colors.black,
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        //       orElse: () => Container(),
        //     );
        //   },
        // ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Builder(
            builder: (context) {
              return IconButton(
                key: const Key('menu_button_closed'),
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: const Icon(
                  LineIcons.bars,
                  color: Colors.black,
                ),
                onPressed: Scaffold.of(context).openEndDrawer,
                splashColor: Colors.transparent,
              );
            },
          ),
        ),
      ],
    );
  }
}
