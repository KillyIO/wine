import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/utils/constants.dart';

class ChapterDatabaseMethods {
  final BuildContext context;

  ChapterDatabaseMethods(this.context);

  void bookmarkButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.bookmarkButtonPressedEVT());

  void chapterPageLaunched(Chapter chapter) => context
      .bloc<ChapterDatabaseBloc>()
      .add(ChapterDatabaseEvent.chapterPageLaunchedEVT(chapter: chapter, context: context));

  void likeButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.likeButtonPressedEVT());

  void previousChapterButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.previousChapterButtonPressedEVT());

  void scroll(int pixels, int maxScrollExtent) => context
      .bloc<ChapterDatabaseBloc>()
      .add(ChapterDatabaseEvent.scrollEVT(currentScrollPosition: pixels, maxScrollPosition: maxScrollExtent));

  bool showWriteChapterButton({
    @required String sessionUid,
    @required Chapter currentChapter,
    @required Chapter sameAuthorChapter,
    @required List<Chapter> nextChapters,
  }) {
    if (currentChapter.isEnd || sessionUid == null) {
      return false;
    } else {
      if (sessionUid == currentChapter.authorUid) {
        return sameAuthorChapter.isEmpty;
      } else {
        return nextChapters.length < Constants.maxNextChaptersByChapter &&
            nextChapters.indexWhere((chapter) => chapter.authorUid == sessionUid) == -1;
      }
    }
  }

  void storyPressed({@required bool showChapterAdditionalInfo}) {
    context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.showOrHideNavbarEVT());
    if (showChapterAdditionalInfo) {
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT());
    }
  }

  void toggleChapterAdditionalInfo() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT());
}
