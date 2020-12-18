import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/chapter_editor/chapter_editor_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class ChapterEditorPage extends StatelessWidget {
  /// @nodoc
  const ChapterEditorPage({
    Key key,
    this.chapterDraft,
    @required this.editorContentOrigin,
    this.previousChapter,
    this.seriesDraft,
  }) : super(key: key);

  /// @nodoc
  final Chapter chapterDraft;

  /// @nodoc
  final Chapter previousChapter;

  /// @nodoc
  final EditorContentOrigin editorContentOrigin;

  /// @nodoc
  final Series seriesDraft;

  ChapterEditorDatabaseBloc _getBloc(BuildContext context) {
    switch (editorContentOrigin) {
      case EditorContentOrigin.account:
        return getIt<ChapterEditorDatabaseBloc>()
          ..add(ChapterEditorDatabaseEvent.chapterEditorLaunchedFromAccountEVT(
            context,
            chapterDraft,
            editorContentOrigin,
          ));
      case EditorContentOrigin.chapter:
        return getIt<ChapterEditorDatabaseBloc>()
          ..add(
            ChapterEditorDatabaseEvent
                .chapterEditorLaunchedFromPreviousChapterEVT(
              context,
              previousChapter,
              editorContentOrigin,
            ),
          );
      case EditorContentOrigin.home:
        return getIt<ChapterEditorDatabaseBloc>()
          ..add(
            ChapterEditorDatabaseEvent.chapterEditorLaunchedFromSeriesEditorEVT(
              context,
              editorContentOrigin,
              seriesDraft,
            ),
          );
      default:
        return getIt<ChapterEditorDatabaseBloc>();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: _getBloc),
          BlocProvider(
            create: (context) => getIt<ChapterEditorNavigationBloc>(),
          ),
        ],
        child: ChapterEditorLayout(),
      ),
    );
  }
}
