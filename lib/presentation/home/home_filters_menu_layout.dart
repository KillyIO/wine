import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/presentation/home/widgets/home_filter_button.dart';

import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/home.dart';
import 'package:wine/utils/constants/languages.dart';
import 'package:wine/utils/responsive/drawer_responsive.dart';
import 'package:wine/utils/responsive/home_responsive.dart';

/// @nodoc
class HomeFiltersMenuLayout extends StatelessWidget {
  /// @nodoc
  const HomeFiltersMenuLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: getDrawerWidth(mediaQuery),
      child: Drawer(
        key: const Key('home_filters_drawer'),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(defaultAppBarHeight),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: getDefaultAppBarButtonPadding(mediaQuery),
                child: IconButton(
                  key: const Key('filter_menu_back_button'),
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  icon: const Icon(
                    Icons.close_outlined,
                    color: Colors.black,
                  ),
                  onPressed: context.router.pop,
                  splashColor: Colors.transparent,
                ),
              ),
              leadingWidth: defaultToolbarItemWidth,
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: [
                const ListTile(
                  title: Text(
                    'TIME',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Column(
                      children: timeFilterKeys
                          .map(
                            (e) => HomeFilterButton(
                              isActive: e == state.timeFilterKey,
                              onPressed: () {},
                              title: e,
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                const ListTile(
                  title: Text(
                    'GENRE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Column(
                      children: genresKeys
                          .map(
                            (e) => HomeFilterButton(
                              isActive: e == state.genreFilterKey,
                              onPressed: () {},
                              title: e,
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                const ListTile(
                  title: Text(
                    'LANGUAGE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Column(
                      children: isoCountryCodes
                          .map(
                            (e) => HomeFilterButton(
                              isActive: e == state.languageFilterKey,
                              onPressed: () {},
                              title: e,
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
