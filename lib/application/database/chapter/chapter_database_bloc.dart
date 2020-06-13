import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/methods.dart';

part 'chapter_database_event.dart';
part 'chapter_database_state.dart';

part 'chapter_database_bloc.freezed.dart';

@injectable
class ChapterDatabaseBloc
    extends Bloc<ChapterDatabaseEvent, ChapterDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;

  ChapterDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
  );

  @override
  ChapterDatabaseState get initialState => ChapterDatabaseState.initial();

  @override
  Stream<ChapterDatabaseState> mapEventToState(
    ChapterDatabaseEvent event,
  ) async* {
    yield* event.map(
      chapterPageLaunched: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        Session session = Session();
        int viewsCount = 0, likesCount = 0, bookmarksCount = 0;
        bool isLiked = false, isBookmarked = false;

        failureOrSuccess = await _localSessionDatabaseFacade.getSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is Session) {
              session = success;
            }
          },
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess =
              await _onlineChapterDatabaseFacade.updateChapterViews(
            userUid: session.uid,
            chapterUid: event.chapter.uid,
          );

          if (failureOrSuccess.isRight()) {
            failureOrSuccess = await _onlineChapterDatabaseFacade
                .getChapterViewsCount(event.chapter.uid);
            failureOrSuccess.fold(
              (_) {},
              (success) {
                if (success is int) {
                  viewsCount = success;
                }
              },
            );

            if (failureOrSuccess.isRight()) {
              failureOrSuccess = await _onlineChapterDatabaseFacade
                  .getChapterLikesCount(event.chapter.uid);
              failureOrSuccess.fold(
                (_) {},
                (success) {
                  if (success is int) {
                    likesCount = success;
                  }
                },
              );

              if (failureOrSuccess.isRight()) {
                failureOrSuccess =
                    await _onlineChapterDatabaseFacade.getUserLikeStatus(
                  userUid: session.uid,
                  chapterUid: event.chapter.uid,
                );
                failureOrSuccess.fold(
                  (_) {},
                  (success) {
                    if (success is bool) {
                      isLiked = success;
                    }
                  },
                );

                if (failureOrSuccess.isRight()) {
                  failureOrSuccess = await _onlineChapterDatabaseFacade
                      .getChapterBookmarksCount(event.chapter.uid);
                  failureOrSuccess.fold(
                    (_) {},
                    (success) {
                      if (success is int) {
                        bookmarksCount = success;
                      }
                    },
                  );

                  if (failureOrSuccess.isRight()) {
                    failureOrSuccess = await _onlineChapterDatabaseFacade
                        .getUserBookmarkStatus(
                      userUid: session.uid,
                      chapterUid: event.chapter.uid,
                    );
                    failureOrSuccess.fold(
                      (_) {},
                      (success) {
                        if (success is bool) {
                          isBookmarked = success;
                        }
                      },
                    );
                  }
                }
              }
            }
          }
        }

        yield state.copyWith(
          session: session,
          chapter: event.chapter,
          isLiked: isLiked,
          isBookmarked: isBookmarked,
          viewsCount: viewsCount,
          likesCount: likesCount,
          bookmarksCount: bookmarksCount,
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          copyrightsMap: Methods.getCopyrights(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      previousChapterButtonPressed: (event) async* {},
      likeButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        int likesCount;

        failureOrSuccess =
            await _onlineChapterDatabaseFacade.updateChapterLikes(
          userUid: state.session.uid,
          chapterUid: state.chapter.uid,
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .getChapterLikesCount(state.chapter.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is int) {
                likesCount = success;
              }
            },
          );
        }

        yield state.copyWith(
          isLiked: !state.isLiked,
          likesCount: likesCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      bookmarkButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        int bookmarksCount;

        failureOrSuccess =
            await _onlineChapterDatabaseFacade.updateChapterBookmarks(
          userUid: state.session.uid,
          chapterUid: state.chapter.uid,
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .getChapterBookmarksCount(state.chapter.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is int) {
                bookmarksCount = success;
              }
            },
          );
        }

        yield state.copyWith(
          isBookmarked: !state.isBookmarked,
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      showOrHideNavbar: (event) async* {
        yield state.copyWith(
          showNavbar: !state.showNavbar,
          databaseFailureOrSuccessOption: none(),
        );
      },
      scroll: (event) async* {
        final percentProgress =
            event.currentScrollPosition / event.maxScrollPosition;

        yield state.copyWith(
          percentProgress: percentProgress,
          databaseFailureOrSuccessOption: none(),
        );
      },
      toggleChapterAdditionalInfo: (event) async* {
        yield state.copyWith(
          showChapterAdditionalInfo: !state.showChapterAdditionalInfo,
          databaseFailureOrSuccessOption: none(),
        );
      },
      fetchNextChapters: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        Chapter sameAuthorChapter = Chapter();
        List<Chapter> nextChapters = <Chapter>[];

        failureOrSuccess =
            await _onlineChapterDatabaseFacade.getChaptersBySeriesUidAndIndex(
          seriesUid: state.chapter.seriesUid,
          index: state.chapter.index + 1,
          getAuthors: true,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is List<Chapter>) {
              if (success.isNotEmpty) {
                for (final Chapter chapter in success) {
                  chapter.series = state.chapter.series;
                }

                final int sameAuthorIdx = success.indexWhere(
                    (chapter) => chapter.authorUid == state.chapter.authorUid);

                if (sameAuthorIdx != -1) {
                  sameAuthorChapter = success.removeAt(sameAuthorIdx);
                }
                nextChapters = success;
              }
            }
          },
        );

        yield state.copyWith(
          nextSameAuthorChapter: sameAuthorChapter,
          nextChapters: nextChapters,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
