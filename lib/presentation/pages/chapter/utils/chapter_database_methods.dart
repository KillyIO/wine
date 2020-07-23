import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/utils/constants.dart';

class ChapterDatabaseMethods {
  final BuildContext context;

  ChapterDatabaseMethods(this.context);

  void bookmarkButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.bookmarkButtonPressedEVT());

  void likeButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.likeButtonPressedEVT());

  void previousChapterButtonPressed() =>
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.previousChapterButtonPressedEVT());

  void scroll(int pixels, int maxScrollExtent) => context
      .bloc<ChapterDatabaseBloc>()
      .add(ChapterDatabaseEvent.scrollEVT(currentScrollPosition: pixels, maxScrollPosition: maxScrollExtent));

  bool showWriteChapterButton(ChapterDatabaseState chapterDbState) {
    if (chapterDbState.chapter.isNotEmpty && chapterDbState.session.isNotEmpty) {
      if (chapterDbState.chapter.isEnd || chapterDbState.session.uid == null) {
        return false;
      } else {
        if (chapterDbState.session.uid == chapterDbState.chapter.authorUid) {
          return chapterDbState.nextSameAuthorChapterMinified.isEmpty;
        } else {
          return chapterDbState.nextChaptersMinified.length < Constants.maxNextChaptersByChapter &&
              chapterDbState.nextChaptersMinified
                      .indexWhere((chapter) => chapter.authorUid == chapterDbState.session.uid) ==
                  -1;
        }
      }
    }
    return false;
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
