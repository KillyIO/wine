import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/library/library_navigation_bloc.dart';
import 'package:wine/presentation/utils/library/library_database_methods.dart';

import 'package:wine/presentation/utils/library/library_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_vertical_navbar_button.dart';

/// @nodoc
class LibraryVerticalNavbar extends StatelessWidget {
  /// @nodoc
  const LibraryVerticalNavbar({
    Key key,
    @required this.currentIndex,
    @required this.items,
    @required this.libraryDatabaseMethods,
    @required this.libraryNavigationMethods,
    @required this.width,
  }) : super(key: key);

  /// @nodoc
  final double width;

  /// @nodoc
  final int currentIndex;

  /// @nodoc
  final LibraryDatabaseMethods libraryDatabaseMethods;

  /// @nodoc
  final LibraryNavigationMethods libraryNavigationMethods;

  /// @nodoc
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final value = entry.value;

            return Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 20.0 : 0.0,
                bottom: 20.0,
              ),
              child: BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
                builder: (context, libraryNavigationState) {
                  return WINEVerticalNavbarButton(
                    title: value,
                    onPressed: () {
                      libraryDatabaseMethods.verticalNavbarIndexChanged(
                        index,
                        libraryNavigationState.currentPageViewIdx,
                      );
                      libraryNavigationMethods
                          .verticalNavbarIndexChanged(index);
                    },
                    color:
                        currentIndex == index ? Colors.black : Colors.black12,
                    width: width,
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
