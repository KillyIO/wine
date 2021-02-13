import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/library/library_database_bloc.dart';
import 'package:wine/application/navigation/library/library_navigation_bloc.dart';
import 'package:wine/presentation/layouts/library/library_my_chapters_layout.dart';
import 'package:wine/presentation/layouts/library/library_my_series_layout.dart';
import 'package:wine/presentation/utils/library/library_database_methods.dart';
import 'package:wine/presentation/utils/library/library_navigation_methods.dart';
import 'package:wine/presentation/widgets/library/library_page_view_builder.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class LibraryLayout extends StatefulWidget {
  @override
  _LibraryLayoutState createState() => _LibraryLayoutState();
}

class _LibraryLayoutState extends State<LibraryLayout>
    with Getters, TickerProviderStateMixin {
  // final LibraryListeners _libraryListeners = LibraryListeners();
  final PageController _pageController = PageController(initialPage: 1000);

  LibraryDatabaseMethods _libraryDatabaseMethods;
  LibraryNavigationMethods _libraryNavigationMethods;
  List<Widget> _pageViewLayouts;

  @override
  void initState() {
    super.initState();
    _libraryDatabaseMethods = LibraryDatabaseMethods(context);
    _libraryNavigationMethods = LibraryNavigationMethods(context);

    _pageViewLayouts = <Widget>[
      LibraryMySeriesLayout(
        libraryDatabaseMethods: _libraryDatabaseMethods,
        libraryNavigationMethods: _libraryNavigationMethods,
      ),
      LibraryMyChaptersLayout(
        libraryDatabaseMethods: _libraryDatabaseMethods,
        libraryNavigationMethods: _libraryNavigationMethods,
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
                builder: (context, libraryNavigationState) {
                  return WINEHorizontalNavbar(
                    currentPageViewIdx:
                        libraryNavigationState.currentPageViewIdx,
                    pageController: _pageController,
                    pageViewNavbarColors: const <Color>[
                      Palettes.pastelBlue,
                      Palettes.pastelYellow,
                      Palettes.pastelPink,
                    ],
                    pageViewNavbarItems: libraryNavbarItemsKeys,
                  );
                },
              ),
              LibraryPageViewBuilder(
                libraryDatabaseMethods: _libraryDatabaseMethods,
                libraryNavigationMethods: _libraryNavigationMethods,
                pageController: _pageController,
                pageViewLayouts: _pageViewLayouts,
              ),
            ],
          ),
          BlocBuilder<LibraryDatabaseBloc, LibraryDatabaseState>(
            builder: (context, libraryDatabaseState) {
              return WINELoadingScreen(
                vsync: this,
                isLoading: libraryDatabaseState.isLoading,
              );
            },
          ),
        ],
      ),
    );
  }
}
