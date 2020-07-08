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
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';

part 'series_database_bloc.freezed.dart';
part 'series_database_event.dart';
part 'series_database_state.dart';

@injectable
class SeriesDatabaseBloc extends Bloc<SeriesDatabaseEvent, SeriesDatabaseState> {
  final IAuthenticationFacade _authenticationFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

  SeriesDatabaseBloc(
    this._authenticationFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
  ) : super(SeriesDatabaseState.initial());

  @override
  Stream<SeriesDatabaseState> mapEventToState(SeriesDatabaseEvent event) async* {
    yield* event.map(
      bookmarkButtonPressedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineSeriesDatabaseFacade
            .updateSeriesBookmarks(userUid: state.session.uid, seriesUid: state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountUpdatedSCS) {
              add(const SeriesDatabaseEvent.bookmarksUpdatedEVT());
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
            await _onlineSeriesDatabaseFacade.loadSeriesBookmarksCount(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountLoadedSCS) {
              bookmarksCount = success.count;
            }
          },
        );

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      likeButtonPressedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineSeriesDatabaseFacade
            .updateSeriesLikesAndLikesCount(userUid: state.session.uid, seriesUid: state.series.uid);

        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountUpdatedSCS) {
              add(const SeriesDatabaseEvent.likesUpdatedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), isLiked: !state.isLiked);
      },
      likesUpdatedEVT: (event) async* {
        int likesCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesLikesCount(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountLoadedSCS) {
              likesCount = success.count;
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), likesCount: likesCount);
      },
      readChapterOneButtonPressedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        yield state.copyWith(databaseFailureOrSuccessOption: none());

        Chapter chapterOne = Chapter();

        if (!state.chapterOne.isEmpty) {
          chapterOne = state.chapterOne;
        } else {
          failureOrSuccess = await _onlineChapterDatabaseFacade.loadFirstChapter(state.series.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterLoadedSCS) {
                chapterOne = success.chapter;
                chapterOne
                  ..series = state.series
                  ..author = state.series.author;
              }
            },
          );
        }

        sailor.navigate(
          Constants.chapterRoute,
          args: ChapterPageArgs(chapter: chapterOne, predicateRoute: Constants.seriesRoute),
        );

        yield state.copyWith(chapterOne: chapterOne, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      seriesBookmarkStatusLoadedEVT: (event) async* {
        int bookmarksCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesBookmarksCount(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountLoadedSCS) {
              bookmarksCount = success.count;
            }
          },
        );

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesLikesLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        bool isBookmarked = false;
        int bookmarksCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.loadSeriesBookmarksCount(state.series.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsCountLoadedSCS) {
                bookmarksCount = success.count;
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.loadUserBookmarkStatus(
            userUid: state.session.uid,
            seriesUid: state.series.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsStatusLoadedSCS) {
                isBookmarked = success.status;
                add(const SeriesDatabaseEvent.seriesBookmarkStatusLoadedEVT());
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
      seriesLikeStatusLoadedEVT: (event) async* {
        int likesCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesLikesCount(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountLoadedSCS) {
              likesCount = success.count;
              add(const SeriesDatabaseEvent.seriesLikesLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          likesCount: likesCount,
        );
      },
      seriesPageLaunchedEVT: (event) async* {
        Session session = Session();

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SessionFetchedSCS) {
              session = success.session;
              add(SeriesDatabaseEvent.sessionFetchedEVT(session));
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          series: event.series,
          session: session,
        );
      },
      seriesViewsLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        bool isLiked = false;
        int likesCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.loadSeriesLikesCount(state.series.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsCountLoadedSCS) {
                likesCount = success.count;
                add(const SeriesDatabaseEvent.seriesLikesLoadedEVT());
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.loadUserLikeStatus(
            userUid: state.session.uid,
            seriesUid: state.series.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsStatusLoadedSCS) {
                isLiked = success.status;
                add(const SeriesDatabaseEvent.seriesLikeStatusLoadedEVT());
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
      seriesViewsUpdatedEVT: (event) async* {
        int viewsCount = 0;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesViewsCount(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesStatsCountLoadedSCS) {
              viewsCount = success.count;
              add(const SeriesDatabaseEvent.seriesViewsLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );
      },
      sessionFetchedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isAnonymous = await _authenticationFacade.isAnonymous();
        int viewsCount = 0;

        if (isAnonymous) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.loadSeriesViewsCount(state.series.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsCountLoadedSCS) {
                viewsCount = success.count;
                add(const SeriesDatabaseEvent.seriesViewsLoadedEVT());
              }
            },
          );
        } else {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.updateSeriesViews(
            userUid: event.session.uid,
            seriesUid: state.series.uid,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesStatsCountUpdatedSCS) {
                add(const SeriesDatabaseEvent.seriesViewsUpdatedEVT());
              }
            },
          );
        }

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );
      },
      showMoreSummaryButtonPressedEVT: (event) async* {},
    );
  }
}
