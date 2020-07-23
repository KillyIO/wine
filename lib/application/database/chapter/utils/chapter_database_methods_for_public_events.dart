import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';

mixin ChapterDatabaseMethodsForPublicEvents on Bloc<ChapterDatabaseEvent, ChapterDatabaseState> {
  Stream<ChapterDatabaseState> updateChapterBookmarks(IOnlineChapterDatabaseFacade onlineChapterDatabaseFacade) async* {
    final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await onlineChapterDatabaseFacade
        .updateChapterBookmarks(userUid: state.session.uid, chapterUid: state.chapter.uid);
    failureOrSuccess.fold(
      (_) {},
      (success) {
        if (success is ChapterStatsCountUpdatedSCS) {
          add(const ChapterDatabaseEvent.bookmarksUpdatedEVT());
        }
      },
    );

    yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), isBookmarked: !state.isBookmarked);
  }
}
