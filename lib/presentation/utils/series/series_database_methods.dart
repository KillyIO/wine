import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';

/// @nodoc
class SeriesDatabaseMethods {
  /// @nodoc
  SeriesDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void bookmarkButtonPressed() => context
      .read<SeriesDatabaseBloc>()
      .add(const SeriesDatabaseEvent.bookmarkButtonPressedEVT());

  /// @nodoc
  void likeButtonPressed() => context
      .read<SeriesDatabaseBloc>()
      .add(const SeriesDatabaseEvent.likeButtonPressedEVT());
}
