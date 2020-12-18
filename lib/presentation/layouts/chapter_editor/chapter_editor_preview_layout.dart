import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/presentation/widgets/chapter/chapter_index.dart';
import 'package:wine/presentation/widgets/chapter/chapter_title.dart';

/// @nodoc
class ChapterEditorPreviewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChapterEditorDatabaseBloc, ChapterEditorDatabaseState>(
      builder: (context, chapterEditorDatabaseState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              ChapterIndex(
                index: chapterEditorDatabaseState.chapterDraft.index,
              ),
              const SizedBox(height: 10),
              ChapterTitle(title: chapterEditorDatabaseState.titleStr),
              const SizedBox(height: 75),
              MarkdownBody(data: chapterEditorDatabaseState.storyStr),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
