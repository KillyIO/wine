import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar.dart';
import 'package:wine/presentation/library/widgets/library_page_view_builder.dart';
import 'package:wine/utils/constants/library.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class LibraryLayout extends StatelessWidget {
  /// @nodoc
  LibraryLayout({super.key});

  final PageController _pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlocConsumer<LibraryBloc, LibraryState>(
          listener: (context, state) {
            state.failureOption.when(
              some: (value) => value.when(
                ok: (_) {},
                err: (err) => err.maybeMap(
                  branch: (f) => f.f.maybeMap(
                    permissionDenied: (_) async => baseErrorDialog(
                      context,
                      <String>['Forbidden action. Permission denied!'],
                    ),
                    serverError: (_) async => baseErrorDialog(
                      context,
                      <String>['A problem occurred on our end!'],
                    ),
                    unexpected: (_) async => baseErrorDialog(
                      context,
                      <String>['An unexpected error occured!'],
                    ),
                    orElse: () {},
                  ),
                  sessions: (f) => f.f.maybeMap(
                    sessionNotFound: (_) async => baseErrorDialog(
                      context,
                      <String>['Session not found!'],
                    ),
                    orElse: () {},
                  ),
                  tree: (f) => f.f.maybeMap(
                    permissionDenied: (_) async => baseErrorDialog(
                      context,
                      <String>['Forbidden action. Permission denied!'],
                    ),
                    serverError: (_) async => baseErrorDialog(
                      context,
                      <String>['A problem occurred on our end!'],
                    ),
                    unexpected: (_) async => baseErrorDialog(
                      context,
                      <String>['An unexpected error occured!'],
                    ),
                    orElse: () {},
                  ),
                  orElse: () {},
                ),
              ),
              none: () {},
            );
          },
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
    );
  }
}
