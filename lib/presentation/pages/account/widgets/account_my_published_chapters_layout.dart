import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/presentation/widgets/wine_chapter_tile.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class AccountMyPublishedChaptersLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        if (acDbState.series.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/img/branch.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                const Text('No published chapters found.', style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          );
        }
        return ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: ListView.builder(
            itemCount: acDbState.chapters.length,
            itemBuilder: (BuildContext context, int index) {
              final Chapter chapter = acDbState.chapters[index];
              chapter.author = User.fromMap(acDbState.session.toMap());

              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 10.0 : 0.0),
                child: WINEChapterTile(
                  coverUrl: chapter.coverUrl,
                  title: chapter.title,
                  authorName: acDbState.session.username,
                  seriesTitle: chapter.series.title,
                  onPressed: () => sailor.navigate(Constants.chapterRoute, args: ChapterPageArgs(chapter: chapter)),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
