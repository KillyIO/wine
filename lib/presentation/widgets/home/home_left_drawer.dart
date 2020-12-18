import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/utils/home/home_database_methods.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/home/home_filter_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class HomeLeftDrawer extends StatelessWidget with Getters {
  /// @nodoc
  HomeLeftDrawer({
    Key key,
    @required this.homeDatabaseMethods,
    @required this.homeNavigationMethods,
  }) : super(key: key);

  /// @nodoc
  final HomeDatabaseMethods homeDatabaseMethods;

  /// @nodoc
  final HomeNavigationMethods homeNavigationMethods;

  @override
  Widget build(BuildContext context) {
    final currentPageViewIdx =
        context.select((HomeNavigationBloc b) => b.state.currentPageViewIdx);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(41.5),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(color: Colors.black, height: 2.0),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
            child: WINELeadingImageButton(
              imagePath: Assets.backIcon,
              onPressed: () =>
                  homeNavigationMethods.toggleDrawer(isRight: false),
            ),
          ),
          actions: <Widget>[
            BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
              builder: (context, homeDatabaseState) {
                return FlatButton(
                  disabledTextColor: Colors.black26,
                  highlightColor: Colors.transparent,
                  onPressed: homeDatabaseState.areFiltersApplied
                      ? null
                      : () => homeDatabaseMethods
                          .applyFilterChanges(currentPageViewIdx),
                  splashColor: Colors.transparent,
                  textColor: Colors.black,
                  child: const Text(
                    'APPLY CHANGES',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const ListTile(
              title: Text(
                'TIME',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
              builder: (context, homeDatabaseState) {
                return Column(
                  children: timeFilterKeys
                      .map((String key) => HomeFilterButton(
                            title: key,
                            isActive: key == homeDatabaseState.timeFilterKey,
                            onPressed: () =>
                                homeDatabaseMethods.timeFilterKeyChanged(key),
                          ))
                      .toList(),
                );
              },
            ),
            const ListTile(
              title: Text(
                'GENRE',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
              builder: (context, homeDatabaseState) {
                return Column(
                  children: genreKeys
                      .map((String key) => HomeFilterButton(
                            title: key,
                            isActive: key == homeDatabaseState.genreFilterKey,
                            onPressed: () =>
                                homeDatabaseMethods.genreFilterKeyChanged(key),
                          ))
                      .toList(),
                );
              },
            ),
            const ListTile(
              title: Text(
                'LANGUAGE',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            BlocBuilder<HomeDatabaseBloc, HomeDatabaseState>(
              builder: (context, homeDatabaseState) {
                return Column(
                  children: languageKeys
                      .map((String key) => HomeFilterButton(
                            title: key,
                            isActive:
                                key == homeDatabaseState.languageFilterKey,
                            onPressed: () => homeDatabaseMethods
                                .languageFilterKeyChanged(key),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
