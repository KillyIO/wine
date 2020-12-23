import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/library/library_navigation_bloc.dart';
import 'package:wine/presentation/utils/library/library_database_methods.dart';
import 'package:wine/presentation/utils/library/library_navigation_methods.dart';

/// @nodoc
class LibraryPageViewBuilder extends StatelessWidget {
  /// @nodoc
  LibraryPageViewBuilder({
    Key key,
    @required this.libraryDatabaseMethods,
    @required this.libraryNavigationMethods,
    @required this.pageController,
    @required this.pageViewLayouts,
  }) : super(key: key);

  /// @nodoc
  final LibraryDatabaseMethods libraryDatabaseMethods;

  /// @nodoc
  final LibraryNavigationMethods libraryNavigationMethods;

  /// @nodoc
  final PageController pageController;

  /// @nodoc
  final List<Widget> pageViewLayouts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
        builder: (context, libraryNavigationState) {
          return PageView.builder(
            controller: pageController,
            itemBuilder: (BuildContext context, int index) =>
                pageViewLayouts[index % pageViewLayouts.length],
            onPageChanged: (int index) {
              libraryDatabaseMethods.pageViewIndexChanged(
                index,
                pageViewLayouts.length,
                libraryNavigationState.currentVerticalNavbarIdx,
              );
              libraryNavigationMethods.pageViewIndexChanged(
                index,
                pageViewLayouts.length,
              );
            },
          );
        },
      ),
    );
  }
}
