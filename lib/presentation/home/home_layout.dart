import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';
import 'package:wine/utils/functions.dart';
import 'package:wine/utils/paths/router.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SetupBloc, SetupState>(
      listener: (context, state) {
        state.maybeMap(
          failure: (value) {
            value.failure.maybeMap(
              auth: (f) => f.f.maybeMap(
                orElse: () {},
                serverError: (_) async =>
                    restartApp(context, 'A problem occurred on our end!'),
                unexpected: (_) async =>
                    restartApp(context, 'An unexpected error occured!'),
              ),
              defaultCovers: (f) => f.f.maybeMap(
                defaultCoverURLsNotCached: (_) async =>
                    restartApp(context, 'Default covers could not be cached!'),
                defaultCoverURLsNotLoaded: (_) async =>
                    restartApp(context, 'Default covers could not be loaded!'),
                orElse: () {},
                serverError: (_) async =>
                    restartApp(context, 'A problem occurred on our end!'),
                unexpected: (_) async =>
                    restartApp(context, 'An unexpected error occured!'),
              ),
              sessions: (f) => f.f.maybeMap(
                sessionNotCreated: (_) async =>
                    restartApp(context, 'Session could not be created!'),
                sessionNotUpdated: (_) async =>
                    restartApp(context, 'Session could not be updated!'),
                orElse: () {},
              ),
              settings: (f) => f.f.maybeMap(
                settingsNotInitialized: (_) async =>
                    restartApp(context, 'Settings could not be initialized!'),
                orElse: () {},
              ),
              user: (f) => f.f.maybeMap(
                userNotFound: (_) async =>
                    restartApp(context, 'User account not found!'),
                orElse: () {},
              ),
              orElse: () {},
            );
          },
          initHomeBloc: (_) {
            context.read<HomeBloc>()..add(const HomeEvent.initBloc());
          },
          navigateToOnboarding: (_) {
            context.router.pushNamed(onboardingPath);
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.white,
            appBar: HomeAppBar(),
            body: Container(),
          ),
        ],
      ),
    );
  }
}
