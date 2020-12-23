import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/navigation/library/library_navigation_bloc.dart';

/// @nodoc
class LibraryNavigationMethods {
  /// @nodoc
  LibraryNavigationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index, int pages) => context
      .read<LibraryNavigationBloc>()
      .add(LibraryNavigationEvent.pageViewIndexChangedEVT(index % pages));

  /// @nodoc
  void verticalNavbarIndexChanged(int index) => context
      .read<LibraryNavigationBloc>()
      .add(LibraryNavigationEvent.verticalNavbarIndexChangedEVT(index));
}
