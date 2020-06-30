import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/utils/constants.dart';

class NewChapterDatabaseValidators {
  final BuildContext context;

  NewChapterDatabaseValidators(this.context);

  String storyValidator() => context.bloc<NewChapterDatabaseBloc>().state.story.value.fold(
        (f) => f.maybeMap(
          emptyInput: (_) => 'The title must not be empty.',
          shortInput: (_) => 'The story must be more than ${Constants.chapterStoryMinWords} words long.',
          longInput: (_) => 'The story must be less than ${Constants.chapterStoryMinWords} words long.',
          orElse: () => null,
        ),
        (_) => null,
      );

  String titleValidator() => context.bloc<NewChapterDatabaseBloc>().state.title.value.fold(
        (f) => f.maybeMap(
          emptyInput: (_) => 'The title must not be empty.',
          longInput: (_) => 'The title must be lass than 10 words long.',
          orElse: () => null,
        ),
        (_) => null,
      );
}
