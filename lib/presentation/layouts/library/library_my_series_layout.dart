import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/library/library_database_bloc.dart';

import 'package:wine/application/navigation/library/library_navigation_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/layouts/library/library_base_series_layout.dart';
import 'package:wine/presentation/utils/library/library_database_methods.dart';
import 'package:wine/presentation/utils/library/library_navigation_methods.dart';
import 'package:wine/presentation/widgets/library/library_vertical_navbar.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class LibraryMySeriesLayout extends StatelessWidget with Getters {
  /// @nodoc
  LibraryMySeriesLayout({
    Key key,
    @required this.libraryDatabaseMethods,
    @required this.libraryNavigationMethods,
  }) : super(key: key);

  /// @nodoc
  final LibraryDatabaseMethods libraryDatabaseMethods;

  /// @nodoc
  final LibraryNavigationMethods libraryNavigationMethods;

  List<Series> _getSeries(LibraryDatabaseState state, String type) {
    switch (type) {
      case 'published':
        return state.seriesList;
      case 'drafts':
        return state.seriesDrafts;
      case 'bookmarked':
        return state.bookmarkedSeriesList;
      default:
        return <Series>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
      builder: (context, libraryNavigationState) {
        return Row(
          children: <Widget>[
            LibraryVerticalNavbar(
              libraryDatabaseMethods: libraryDatabaseMethods,
              libraryNavigationMethods: libraryNavigationMethods,
              items: libraryVerticalNavbarItemsKeys,
              currentIndex: libraryNavigationState.currentVerticalNavbarIdx,
              width: MediaQuery.of(context).size.width / 5,
            ),
            Expanded(
              child: BlocBuilder<LibraryDatabaseBloc, LibraryDatabaseState>(
                builder: (context, libraryDatabaseState) {
                  return LibraryBaseSeriesLayout(
                    seriesList: _getSeries(
                      libraryDatabaseState,
                      libraryLayoutsContentType[
                          libraryNavigationState.currentVerticalNavbarIdx],
                    ),
                    isDraft: libraryLayoutsContentType[
                            libraryNavigationState.currentVerticalNavbarIdx] ==
                        'drafts',
                  );
                },
              ),
            ),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
