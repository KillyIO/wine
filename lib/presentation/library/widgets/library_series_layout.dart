import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/presentation/library/widgets/library_base_series_layout.dart';
import 'package:wine/presentation/library/widgets/library_vertical_navbar.dart';
import 'package:wine/utils/constants/library.dart';

/// @nodoc
class LibrarySeriesLayout extends StatelessWidget {
  /// @nodoc
  const LibrarySeriesLayout({Key? key}) : super(key: key);

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
            const Expanded(
              child: LibraryBaseSeriesLayout(),
            ),
          ],
        );
      },
    );
  }
}
