import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';

/// @nodoc
class SeriesEditorDatabaseValidators {
  /// @nodoc
  SeriesEditorDatabaseValidators(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  String subtitleValidator() =>
      context.read<SeriesEditorDatabaseBloc>().state.subtitle.value.fold(
            (f) => f.maybeMap(
              longInput: (_) => 'The title must be less than 10 words long.',
              orElse: () => null,
            ),
            (_) => null,
          );

  /// @nodoc
  String summaryValidator() =>
      context.read<SeriesEditorDatabaseBloc>().state.summary.value.fold(
            (f) => f.maybeMap(
              emptyInput: (_) => 'The summary must not be empty.',
              longInput: (_) => 'The summary must be less than 200 words long.',
              orElse: () => null,
            ),
            (_) => null,
          );

  /// @nodoc
  String titleValidator() =>
      context.read<SeriesEditorDatabaseBloc>().state.title.value.fold(
            (f) => f.maybeMap(
              emptyInput: (_) => 'The title must not be empty.',
              longInput: (_) => 'The title must be lass than 10 words long.',
              orElse: () => null,
            ),
            (_) => null,
          );
}
