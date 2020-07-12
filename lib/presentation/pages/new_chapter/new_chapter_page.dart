import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/new_chapter/widgets/new_chapter_form_layout.dart';
import 'package:wine/utils/themes.dart';

class NewChapterPage extends StatelessWidget {
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final Chapter previousChapter;

  const NewChapterPage({
    Key key,
    this.chapterDraft,
    this.seriesDraft,
    this.previousChapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NewChapterDatabaseBloc>()
              ..add(NewChapterDatabaseEvent.newChapterPageLaunchedEVT(
                chapterDraft: chapterDraft,
                context: context,
                previousChapter: previousChapter,
                seriesDraft: seriesDraft,
              )),
          ),
        ],
        child: const NewChapterFormLayout(),
      ),
    );
  }
}
