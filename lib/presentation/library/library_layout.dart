import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_navigation/library_navigation_bloc.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar.dart';
import 'package:wine/presentation/library/widgets/library_page_view_builder.dart';
import 'package:wine/utils/constants/library.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class LibraryLayout extends StatelessWidget {
  /// @nodoc
  LibraryLayout({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          BlocBuilder<LibraryNavigationBloc, LibraryNavigationState>(
            builder: (context, state) {
              return HorizontalPageViewNavbar(
                colors: const <Color>[pastelYellow, pastelPink],
                controller: _pageController,
                pageIndex: state.currentPageViewIdx,
                titles: libraryPageViewKeys,
              );
            },
          ),
          LibraryPageViewBuilder(
            pageController: _pageController,
          ),
        ],
      ),
    );
  }
}
