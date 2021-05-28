import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';
import 'package:wine/utils/paths/router.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeMenuLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: mediaQuery.width,
      child: Drawer(
        key: const Key('home_menu_drawer'),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  brightness: Brightness.light,
                  elevation: 0.0,
                  actions: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(
                            LineIcons.times,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: context.router.pop,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            authenticated: (_) => HomeMenuTile(
                              key: const Key('home_menu_library_tile'),
                              // TODO add route push LibraryPage
                              onPressed: () {},
                              text: 'LIBRARY',
                            ),
                            orElse: () => Container(),
                          );
                        },
                      ),
                      const SizedBox(height: 25),
                      HomeMenuTile(
                        key: const Key('home_menu_plus_tile'),
                        onPressed: () =>
                            context.router.root.pushNamed(plusPath),
                        text: 'PLUS',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
