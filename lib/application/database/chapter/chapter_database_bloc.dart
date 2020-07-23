import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/database/chapter/utils/chapter_database_methods_for_public_events.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/methods.dart';

part 'chapter_database_bloc.freezed.dart';
part 'chapter_database_event.dart';
part 'chapter_database_state.dart';

@injectable
class ChapterDatabaseBloc extends Bloc<ChapterDatabaseEvent, ChapterDatabaseState>
    with ChapterDatabaseMethodsForPublicEvents {
  final IAuthenticationFacade _authenticationFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  ChapterDatabaseBloc(
    this._authenticationFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineUserDatabaseFacade,
  ) : super(ChapterDatabaseState.initial());

  @override
  Stream<ChapterDatabaseState> mapEventToState(ChapterDatabaseEvent event) async* {
    yield* event.map(
      authorLoadedEVT: (event) async* {
        Series series;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesByUid(state.chapter.seriesUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesLoadedSCS) {
              series = success.series;
              add(const ChapterDatabaseEvent.seriesLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          series: series,
        );
      },
      bookmarkButtonPressedEVT: (event) async* {
        yield* updateChapterBookmarks(_onlineChapterDatabaseFacade);
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
      chapterLoadedEVT: (event) async* {
        User author;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineUserDatabaseFacade.loadUser(state.chapter.authorUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserLoadedSCS) {
              author = success.user;
              add(const ChapterDatabaseEvent.authorLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          author: author,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterPageLaunchedEVT: (event) async* {
        Chapter chapter = Chapter();

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChapterByUid(event.chapterUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterLoadedSCS) {
              chapter = success.chapter;
              add(const ChapterDatabaseEvent.chapterLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          chapter: chapter,
          copyrightsMap: Methods.getCopyrights(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
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
        ChapterMinified sameAuthorChapterMinified = ChapterMinified();
        List<ChapterMinified> nextChaptersMinified = <ChapterMinified>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineChapterDatabaseFacade
            .loadChaptersMinifiedBySeriesUidAndIndex(state.chapter.seriesUid, state.chapter.index + 1);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterMinifiedListLoadedSCS) {
              if (success.chaptersMinified.isNotEmpty) {
                final int sameAuthorIdx = success.chaptersMinified
                    .indexWhere((chapterMinified) => chapterMinified.authorUid == state.chapter.authorUid);

                if (sameAuthorIdx != -1) {
                  sameAuthorChapterMinified = success.chaptersMinified.removeAt(sameAuthorIdx);
                }
                nextChaptersMinified = success.chaptersMinified;
              }
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          nextChaptersMinified: nextChaptersMinified,
          nextSameAuthorChapterMinified: sameAuthorChapterMinified,
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
      seriesLoadedEVT: (event) async* {
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
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          session: session,
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
