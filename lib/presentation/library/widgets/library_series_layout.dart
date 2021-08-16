import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/library/library_navigation/library_navigation_bloc.dart';
import 'package:wine/presentation/library/widgets/library_vertical_navbar.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibrarySeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibrarySeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
      builder: (context, libraryNavigationState) {
        return Row(
          children: <Widget>[
            LibraryVerticalNavbar(
              currentIndex: libraryNavigationState.currentVerticalNavbarIdx,
              items: libraryVerticalNavbarKeys,
              width: mediaQuery.width * .25,
            ),
            Expanded(
              child: BlocBuilder<LibraryBloc, LibraryState>(
                builder: (context, libraryState) {
                  return LibrarySeriesLayout();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
