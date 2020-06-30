import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/widgets/wine_chapter_tile.dart';

class AccountMyChapterDraftsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        return ValueListenableBuilder(
          valueListenable: getIt<Box<ChapterDraft>>().listenable(),
          builder: (context, Box<ChapterDraft> box, _) {
            if (box.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/branch.png',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                    const Text('No chapter drafts.', style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              );
            }
            return ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: ListView.builder(
                itemCount: box.values.length,
                itemBuilder: (BuildContext context, int index) {
                  final ChapterDraft chapterDraft = box.values.toList()[index];

                  if (chapterDraft.previousChapterUid != null) {
                    return Padding(
                      padding: EdgeInsets.only(top: index == 0 ? 10.0 : 0.0),
                      child: WINEChapterTile(
                        coverUrl: chapterDraft.coverUrl,
                        title: chapterDraft.title,
                        authorName: acDbState.session.username,
                        seriesTitle: acDbState.seriesMap[chapterDraft.seriesUid].title,
                        onPressed: () {},
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.only(top: index == 0 ? 10.0 : 0.0),
                      child: WINEChapterTile(
                        coverUrl: chapterDraft.coverUrl,
                        title: chapterDraft.title,
                        authorName: acDbState.session.username,
                        seriesTitle: acDbState.seriesDraftsMap[chapterDraft.seriesUid]?.title,
                        onPressed: () {},
                      ),
                    );
                  }
                },
              ),
            );
          },
        );
      },
    );
  }
}
