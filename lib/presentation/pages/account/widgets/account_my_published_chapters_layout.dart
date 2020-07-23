import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/chapter_tile/wine_chapter_tile.dart';

class AccountMyPublishedChaptersLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        if (acDbState.chaptersMinified.isEmpty) {
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
            itemCount: acDbState.chaptersMinified.length,
            itemBuilder: (BuildContext context, int index) {
              final ChapterMinified chapterMinified = acDbState.chaptersMinified[index];

              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 10.0 : 0.0),
                child: WINEChapterTile(
                  coverUrl: chapterMinified.coverUrl,
                  title: chapterMinified.title,
                  authorUsername: acDbState.session.username,
                  onPressed: () async => ExtendedNavigator.root.push(
                    Routes.chapterPage,
                    arguments: ChapterPageArguments(chapterUid: chapterMinified.uid),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
