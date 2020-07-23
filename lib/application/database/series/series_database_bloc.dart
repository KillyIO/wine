import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/database/series/utils/series_database_methods_for_private_events.dart';
import 'package:wine/application/database/series/utils/series_database_methods_for_public_events.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/methods.dart';

part 'series_database_bloc.freezed.dart';
part 'series_database_event.dart';
part 'series_database_state.dart';

@injectable
class SeriesDatabaseBloc extends Bloc<SeriesDatabaseEvent, SeriesDatabaseState>
    with SeriesDatabaseMethodsForPrivateEvents, SeriesDatabaseMethodsForPublicEvents {
  final IAuthenticationFacade _authenticationFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  SeriesDatabaseBloc(
    this._authenticationFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineUserDatabaseFacade,
  ) : super(SeriesDatabaseState.initial());

  @override
  Stream<SeriesDatabaseState> mapEventToState(SeriesDatabaseEvent event) async* {
    yield* event.map(
      authorLoadedEVT: (event) async* {
        ChapterMinified chapterMinified;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadFirstChapterMinified(state.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterMinifiedLoadedSCS) {
              chapterMinified = success.chapterMinified;
              add(const SeriesDatabaseEvent.firstChapterMinifiedLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          chapterOneMinified: chapterMinified,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      bookmarkButtonPressedEVT: (event) async* {
        yield* updateSeriesBookmarks(_onlineSeriesDatabaseFacade);
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
      firstChapterMinifiedLoadedEVT: (event) async* {
        Session session;

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

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), session: session);
      },
      likeButtonPressedEVT: (event) async* {
        yield* updateSeriesLikesAndLikesCount(_onlineSeriesDatabaseFacade);
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
      seriesLoadedEVT: (event) async* {
        User author;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineUserDatabaseFacade.loadUser(state.series.authorUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserLoadedSCS) {
              author = success.user;
              add(const SeriesDatabaseEvent.authorLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          author: author,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesPageLaunchedEVT: (event) async* {
        yield state.copyWith(
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
        );

        Series series;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesByUid(event.seriesUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesLoadedSCS) {
              series = success.series;
              add(const SeriesDatabaseEvent.seriesLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          series: series,
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
