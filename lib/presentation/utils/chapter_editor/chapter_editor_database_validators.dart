import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
class ChapterEditorDatabaseValidators {
  /// @nodoc
  ChapterEditorDatabaseValidators(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  String storyValidator() =>
      context.read<ChapterEditorDatabaseBloc>().state.story.value.fold(
            (f) => f.maybeMap(
              emptyInput: (_) => 'The title must not be empty.',
              shortInput: (_) =>
                  // ignore: lines_longer_than_80_chars
                  'The story must be more than ${Constants.chapterStoryMinWords} words long.',
              longInput: (_) =>
                  // ignore: lines_longer_than_80_chars
                  'The story must be less than ${Constants.chapterStoryMinWords} words long.',
              orElse: () => null,
            ),
            (_) => null,
          );

  /// @nodoc
  String titleValidator() =>
      context.read<ChapterEditorDatabaseBloc>().state.title.value.fold(
            (f) => f.maybeMap(
              emptyInput: (_) => 'The title must not be empty.',
              longInput: (_) => 'The title must be lass than 10 words long.',
              orElse: () => null,
            ),
            (_) => null,
          );
}
