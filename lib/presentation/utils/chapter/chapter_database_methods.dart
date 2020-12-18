import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
class ChapterDatabaseMethods {
  /// @nodoc
  ChapterDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void bookmarkButtonPressed() => context
      .read<ChapterDatabaseBloc>()
      .add(const ChapterDatabaseEvent.bookmarkButtonPressedEVT());

  /// @nodoc
  void likeButtonPressed() => context
      .read<ChapterDatabaseBloc>()
      .add(const ChapterDatabaseEvent.likeButtonPressedEVT());

  /// @nodoc
  void previousChapterButtonPressed() => context
      .read<ChapterDatabaseBloc>()
      .add(const ChapterDatabaseEvent.previousChapterButtonPressedEVT());

  /// @nodoc
  void scroll(int pixels, int maxScrollExtent) =>
      context.read<ChapterDatabaseBloc>().add(ChapterDatabaseEvent.scrollEVT(
            currentScrollPosition: pixels,
            maxScrollPosition: maxScrollExtent,
          ));

  /// @nodoc
  bool showWriteChapterButton(ChapterDatabaseState chapterDatabaseState) {
    if (chapterDatabaseState.chapter.isNotEmpty &&
        chapterDatabaseState.session.isNotEmpty) {
      if (chapterDatabaseState.chapter.isLastChapter ||
          chapterDatabaseState.session.uid == null) {
        return false;
      } else {
        if (chapterDatabaseState.session.uid ==
            chapterDatabaseState.chapter.authorUID) {
          return chapterDatabaseState.nextSameAuthorChapter.isEmpty;
        } else {
          return chapterDatabaseState.nextChapters.length <
                  Constants.maxNextChaptersByChapter &&
              chapterDatabaseState.nextChapters.indexWhere((chapter) =>
                      chapter.authorUID == chapterDatabaseState.session.uid) ==
                  -1;
        }
      }
    }
    return false;
  }

  /// @nodoc
  void storyPressed({@required bool showChapterAdditionalInfo}) {
    context
        .read<ChapterDatabaseBloc>()
        .add(const ChapterDatabaseEvent.showOrHideNavbarEVT());
    if (showChapterAdditionalInfo) {
      context
          .read<ChapterDatabaseBloc>()
          .add(const ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT());
    }
  }

  /// @nodoc
  void toggleChapterAdditionalInfo() => context
      .read<ChapterDatabaseBloc>()
      .add(const ChapterDatabaseEvent.toggleChapterAdditionalInfoEVT());
}
