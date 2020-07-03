import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/methods.dart';

part 'chapter_database_event.dart';
part 'chapter_database_state.dart';

part 'chapter_database_bloc.freezed.dart';

@injectable
class ChapterDatabaseBloc extends Bloc<ChapterDatabaseEvent, ChapterDatabaseState> {
  final IAuthenticationFacade _authenticationFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;

  ChapterDatabaseBloc(
    this._authenticationFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
  ) : super(ChapterDatabaseState.initial());

  @override
  Stream<ChapterDatabaseState> mapEventToState(ChapterDatabaseEvent event) async* {
    yield* event.map(
      bookmarkButtonPressedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineChapterDatabaseFacade
            .updateChapterBookmarks(userUid: state.session.uid, chapterUid: state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountUpdatedSCS) {
              add(const ChapterDatabaseEvent.bookmarksUpdatedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isBookmarked: !state.isBookmarked,
        );
      },
      bookmarksUpdatedEVT: (event) async* {
        int bookmarksCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterBookmarksCount(state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountLoadedSCS) {
              bookmarksCount = success.count;
            }
          },
        );

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterBookmarkStatusLoadedEVT: (event) async* {
        int bookmarksCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterBookmarksCount(state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountLoadedSCS) {
              bookmarksCount = success.count;
            }
          },
        );

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterLikesLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        bool isBookmarked = false;
        int bookmarksCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadChapterBookmarksCount(state.chapter.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountLoadedSCS) {
                bookmarksCount = success.count;
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadUserBookmarkStatus(
            userUid: state.session.uid,
            chapterUid: state.chapter.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsStatusLoadedSCS) {
                isBookmarked = success.status;
                add(const ChapterDatabaseEvent.chapterBookmarkStatusLoadedEVT());
              }
            },
          );
        }

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isBookmarked: isBookmarked,
        );
      },
      chapterLikeStatusLoadedEVT: (event) async* {
        int likesCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterLikesCount(state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountLoadedSCS) {
              likesCount = success.count;
              add(const ChapterDatabaseEvent.chapterLikesLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          likesCount: likesCount,
        );
      },
      chapterPageLaunchedEVT: (event) async* {
        Session session = Session();

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SessionFetchedSCS) {
              session = success.session;
              add(ChapterDatabaseEvent.sessionFetchedEVT(session));
            }
          },
        );

        yield state.copyWith(
          chapter: event.chapter,
          copyrightsMap: Methods.getCopyrights(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          session: session,
        );
      },
      chapterViewsLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        bool isLiked = false;
        int likesCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadChapterLikesCount(state.chapter.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountLoadedSCS) {
                likesCount = success.count;
                add(const ChapterDatabaseEvent.chapterLikesLoadedEVT());
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadUserLikeStatus(
            userUid: state.session.uid,
            chapterUid: state.chapter.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsStatusLoadedSCS) {
                isLiked = success.status;
                add(const ChapterDatabaseEvent.chapterLikeStatusLoadedEVT());
              }
            },
          );
        }

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isLiked: isLiked,
          likesCount: likesCount,
        );
      },
      chapterViewsUpdatedEVT: (event) async* {
        int viewsCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterViewsCount(state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountLoadedSCS) {
              viewsCount = success.count;
              add(const ChapterDatabaseEvent.chapterViewsLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );
      },
      likeButtonPressedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineChapterDatabaseFacade
            .updateChapterLikes(userUid: state.session.uid, chapterUid: state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountUpdatedSCS) {
              add(const ChapterDatabaseEvent.likesUpdatedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), isLiked: !state.isLiked);
      },
      likesUpdatedEVT: (event) async* {
        int likesCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterLikesCount(state.chapter.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterStatsCountLoadedSCS) {
              likesCount = success.count;
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), likesCount: likesCount);
      },
      loadNextChaptersEVT: (event) async* {
        Chapter sameAuthorChapter = Chapter();
        List<Chapter> nextChapters = <Chapter>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChaptersBySeriesUidAndIndex(
          state.chapter.seriesUid,
          state.chapter.index + 1,
          loadAuthors: true,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterListLoadedSCS) {
              if (success.chapters.isNotEmpty) {
                for (final Chapter chapter in success.chapters) {
                  chapter.series = state.chapter.series;
                }

                final int sameAuthorIdx =
                    success.chapters.indexWhere((chapter) => chapter.authorUid == state.chapter.authorUid);

                if (sameAuthorIdx != -1) {
                  sameAuthorChapter = success.chapters.removeAt(sameAuthorIdx);
                }
                nextChapters = success.chapters;
              }
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          nextChapters: nextChapters,
          nextSameAuthorChapter: sameAuthorChapter,
        );
      },
      previousChapterButtonPressedEVT: (event) async* {},
      scrollEVT: (event) async* {
        final percentProgress = event.currentScrollPosition / event.maxScrollPosition;

        yield state.copyWith(
          percentProgress: percentProgress,
          databaseFailureOrSuccessOption: none(),
        );
      },
      sessionFetchedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        int viewsCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadChapterViewsCount(state.chapter.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountLoadedSCS) {
                viewsCount = success.count;
                add(const ChapterDatabaseEvent.chapterViewsLoadedEVT());
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineChapterDatabaseFacade.updateChapterViews(
            userUid: event.session.uid,
            chapterUid: state.chapter.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountUpdatedSCS) {
                add(const ChapterDatabaseEvent.chapterViewsUpdatedEVT());
              }
            },
          );
        }

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );
      },
      showOrHideNavbarEVT: (event) async* {
        yield state.copyWith(
          showNavbar: !state.showNavbar,
          databaseFailureOrSuccessOption: none(),
        );
      },
      toggleChapterAdditionalInfoEVT: (event) async* {
        yield state.copyWith(
          showChapterAdditionalInfo: !state.showChapterAdditionalInfo,
          databaseFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
