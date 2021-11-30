import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/presentation/library/widgets/library_base_series_layout.dart';
import 'package:wine/presentation/library/widgets/library_vertical_navbar.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibrarySeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibrarySeriesLayout({Key? key}) : super(key: key);

  List<Series> _getSeriesList(LibraryState state, String type) {
    switch (type) {
      case 'published':
        return state.seriesList.where((s) => s.isPublished == true).toList();
      case 'drafts':
        return state.seriesList.where((s) => s.isPublished == false).toList();
      case 'bookmarks':
        return state.bookmarkedSeriesList;
      default:
        return <Series>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        return Row(
          children: <Widget>[
            LibraryVerticalNavbar(
              currentIndex: state.currentVerticalNavbarIdx,
              items: libraryVerticalNavbarKeys,
              width: mediaQuery.width * .2,
            ),
            Expanded(
              child: LibraryBaseSeriesLayout(
                seriesList: _getSeriesList(
                  state,
                  libraryVerticalNavbarKeys[state.currentVerticalNavbarIdx],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
