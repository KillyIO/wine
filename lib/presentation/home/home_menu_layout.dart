import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';

import 'package:wine/presentation/home/widgets/home_menu_tile.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/web/auth_dialog.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/drawer_responsive.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeMenuLayout({Key? key}) : super(key: key);

  Future<void> _handleLibraryButtonPressed(BuildContext context) async {
    final mediaQuery = MediaQuery.of(context).size;
    final deviceType = getDeviceType(mediaQuery);

    if (kIsWeb && !(deviceType == DeviceScreenType.mobile)) {
      final state = context.read<AuthBloc>().state;

      await state.maybeMap(
        authenticated: (_) => context.router.root.push(const LibraryRoute()),
        orElse: () => showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<AuthDialogCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<LogInBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<SignUpBloc>(),
              ),
            ],
            child: const AuthDialog(
              key: Key('auth_dialog'),
            ),
          ),
        ),
      );
    } else {
      await context.router.root.push(const LibraryRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: getDrawerWidth(mediaQuery),
      child: Drawer(
        key: const Key('home_menu_drawer'),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(defaultAppBarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.light,
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        icon: const Icon(
                          LineIcons.times,
                          color: Colors.black,
                        ),
                        onPressed: context.router.pop,
                        splashColor: Colors.transparent,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  HomeMenuTile(
                    key: const Key('home_menu_library_tile'),
                    onPressed: () => _handleLibraryButtonPressed(context),
                    text: 'LIBRARY',
                  ),
                  // BlocBuilder<AuthBloc, AuthState>(
                  //   builder: (context, state) {
                  //     return state.maybeMap(
                  //       authenticated: (_) => HomeMenuTile(
                  //         key: const Key('home_menu_library_tile'),
                  //         // TODO add route push LibraryPage
                  //         onPressed: () =>
                  //             context.router.root.push(const LibraryRoute()),
                  //         text: 'LIBRARY',
                  //       ),
                  //       orElse: () => Container(),
                  //     );
                  //   },
                  // ),
                  const SizedBox(height: 25),
                  HomeMenuTile(
                    key: const Key('home_menu_plus_tile'),
                    onPressed: () =>
                        context.router.root.push(const PlusRoute()),
                    text: 'PLUS',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
