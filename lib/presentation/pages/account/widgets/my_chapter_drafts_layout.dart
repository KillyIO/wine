import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/account/widgets/chapter_draft_tile.dart';

class MyChapterDraftsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        return ValueListenableBuilder(
          valueListenable: getIt<Box<ChapterDraft>>().listenable(),
          builder: (context, Box<ChapterDraft> box, _) {
            if (box.isEmpty) {
              return const Center(
                child: Text(
                  'No chapter drafts :(',
                ),
              );
            }
            return ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: box.values.length,
                itemBuilder: (BuildContext context, int index) {
                  final ChapterDraft chapterDraft = box.values.toList()[index];

                  return Padding(
                    padding: EdgeInsets.only(
                      top: index == 0 ? 10.0 : 0.0,
                    ),
                    child: ChapterDraftTile(
                      coverUrl: chapterDraft.coverUrl,
                      title: chapterDraft.title,
                      authorName: acDbState.session.username,
                      seriesTitle:
                          acDbState.seriesMap[chapterDraft.seriesUid].title,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
