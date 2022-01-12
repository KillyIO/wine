import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/presentation/home/home_content_layout.dart';
import 'package:wine/presentation/home/home_filters_menu_layout.dart';
import 'package:wine/presentation/home/home_menu_layout.dart';
import 'package:wine/presentation/home/home_onboarding_layout.dart';
import 'package:wine/presentation/home/home_splash_layout.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: BlocListener<SetupBloc, SetupState>(
        listener: (context, state) {
          state.maybeMap(
            failure: (value) {
              value.failure.maybeMap(
                auth: (f) => f.f.maybeMap(
                  orElse: () {},
                  serverError: (_) => restartAppDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) => restartAppDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                ),
                defaultCovers: (f) => f.f.maybeMap(
                  defaultCoversNotCached: (_) => restartAppDialog(
                    context,
                    <String>['Default covers could not be cached!'],
                  ),
                  defaultCoversNotLoaded: (_) => restartAppDialog(
                    context,
                    <String>['Default covers could not be loaded!'],
                  ),
                  serverError: (_) => restartAppDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) => restartAppDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                sessions: (f) => f.f.maybeMap(
                  sessionNotCreated: (_) => restartAppDialog(
                    context,
                    <String>['Session could not be created!'],
                  ),
                  sessionNotUpdated: (_) => restartAppDialog(
                    context,
                    <String>['Session could not be updated!'],
                  ),
                  orElse: () {},
                ),
                settings: (f) => f.f.maybeMap(
                  settingsNotInitialized: (_) => restartAppDialog(
                    context,
                    <String>['Settings could not be initialized!'],
                  ),
                  orElse: () {},
                ),
                user: (f) => f.f.maybeMap(
                  serverError: (_) => restartAppDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  userNotFound: (_) => restartAppDialog(
                    context,
                    <String>['User account not found!'],
                  ),
                  unexpected: (_) => restartAppDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<SetupBloc, SetupState>(
          builder: (context, state) {
            return state.map(
              content: (_) => const HomeContentLayout(),
              failure: (_) => Container(),
              initial: (_) => const HomeSplashLayout(),
              onboarding: (_) => const HomeOnboardingLayout(),
            );
          },
        ),
      ),
      drawer: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) {
          return state.maybeMap(
            content: (_) => const HomeFiltersMenuLayout(),
            orElse: () => Container(),
          );
        },
      ),
      endDrawer: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) {
          return state.maybeMap(
            content: (_) => const HomeMenuLayout(),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
