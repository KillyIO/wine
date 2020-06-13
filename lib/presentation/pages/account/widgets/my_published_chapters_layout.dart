import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/widgets/wine_chapter_tile.dart';

class MyPublishedChaptersLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        if (acDbState.series.isEmpty) {
          return const Center(
            child: Text(
              'No chapters :(',
            ),
          );
        }
        return ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: ListView.builder(
            itemCount: acDbState.chapters.length,
            itemBuilder: (BuildContext context, int index) {
              final Chapter chapter = acDbState.chapters[index];

              return Padding(
                padding: EdgeInsets.only(
                  top: index == 0 ? 10.0 : 0.0,
                ),
                child: WINEChapterTile(
                  coverUrl: chapter.coverUrl,
                  title: chapter.title,
                  authorName: acDbState.session.username,
                  seriesTitle: chapter.series.title,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
