import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar.dart';
import 'package:wine/presentation/home/home_menu_layout.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';
import 'package:wine/presentation/home/widgets/home_page_view_builder.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/home.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  HomeLayout({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

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
                  defaultCoverURLsNotCached: (_) => restartAppDialog(
                    context,
                    <String>['Default covers could not be cached!'],
                  ),
                  defaultCoverURLsNotLoaded: (_) => restartAppDialog(
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
            initHomeBloc: (_) {
              context.read<HomeBloc>().add(const HomeEvent.initBloc());
            },
            navigateToOnboarding: (_) {
              context.router.root.push(const OnboardingRoute());
            },
            orElse: () {},
          );
        },
        child: Column(
          children: <Widget>[
            BlocBuilder<HomeNavigationBloc, HomeNavigationState>(
              builder: (context, state) {
                return HorizontalPageViewNavbar(
                  colors: const <Color>[pastelYellow, pastelPink],
                  controller: _pageController,
                  pageIndex: state.currentPageViewIdx,
                  titles: homePageViewKeys,
                );
              },
            ),
            HomePageViewBuilder(
              controller: _pageController,
            ),
          ],
        ),
      ),
      drawer: SizedBox(
        width: mediaQuery.width,
        child: Drawer(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  brightness: Brightness.light,
                  elevation: 0,
                  leading: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(
                          LineIcons.times,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: context.router.pop,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: const HomeMenuLayout(),
    );
  }
}
