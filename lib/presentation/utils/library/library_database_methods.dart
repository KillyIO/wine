import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/library/library_database_bloc.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class LibraryDatabaseMethods with Getters {
  /// @nodoc
  LibraryDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index, int pages, int verticalNavbarIndex) =>
      context.read<LibraryDatabaseBloc>().add(
          libraryPageViewOrVerticalNavbarIndexEvents[index % pages]
              [verticalNavbarIndex]);

  /// @nodoc
  void verticalNavbarIndexChanged(int index, int pageViewIndex) => context
      .read<LibraryDatabaseBloc>()
      .add(libraryPageViewOrVerticalNavbarIndexEvents[pageViewIndex][index]);
}
