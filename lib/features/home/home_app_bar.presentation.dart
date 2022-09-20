import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/core/routes/router.gr.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/functions/navigation_functions.dart';
import 'package:wine/utils/responsive/home_responsive.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  const HomeAppBar({
    super.key,
    this.preferredSize = const Size.fromHeight(defaultAppBarHeight),
  });

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return state.maybeMap(
          content: (_) => AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(color: Colors.black, height: 2),
            ),
            elevation: 0,
            leading: Padding(
              padding: getDefaultAppBarButtonPadding(mediaQuery),
              child: IconButton(
                key: const Key('home_filter_button'),
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: const Icon(
                  Icons.filter_list_outlined,
                  color: Colors.black,
                ),
                onPressed: Scaffold.of(context).openDrawer,
                splashColor: Colors.transparent,
              ),
            ),
            leadingWidth: defaultToolbarItemWidth,
            actions: [
              Padding(
                padding:
                    getDefaultAppBarButtonPadding(mediaQuery, isRight: true),
                child: IconButton(
                  key: const Key('home_new_tree_button'),
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  icon: const Icon(
                    Icons.add_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () => handleAuthGuardedNavigation(
                    context,
                    navigateTo: TypewriterTreeUID(
                      type: TypewriterType.tree,
                    ),
                  ),
                  splashColor: Colors.transparent,
                ),
              ),
              Padding(
                padding:
                    getDefaultAppBarButtonPadding(mediaQuery, isRight: true),
                child: IconButton(
                  key: const Key('home_menu_button'),
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  icon: const Icon(
                    Icons.menu_outlined,
                    color: Colors.black,
                  ),
                  onPressed: Scaffold.of(context).openEndDrawer,
                  splashColor: Colors.transparent,
                ),
              ),
            ],
          ),
          orElse: Container.new,
        );
      },
    );
  }
}
