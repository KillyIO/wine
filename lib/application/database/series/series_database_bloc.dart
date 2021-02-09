import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';

part 'series_database_bloc.freezed.dart';
part 'series_database_event.dart';
part 'series_database_state.dart';

/// @nodoc
@injectable
class SeriesDatabaseBloc
    extends Bloc<SeriesDatabaseEvent, SeriesDatabaseState> {
  /// @nodoc
  SeriesDatabaseBloc(
    this._authenticationFacade,
    this._localConfigDatabaseFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
  ) : super(SeriesDatabaseState.initial());

  final IAuthenticationFacade _authenticationFacade;
  final ILocalConfigDatabaseFacade _localConfigDatabaseFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

  @override
  Stream<SeriesDatabaseState> mapEventToState(
      SeriesDatabaseEvent event) async* {
    yield* event.map(
      bookmarkButtonPressedEVT: (event) async* {
        final failureOrSuccess = await _onlineSeriesDatabaseFacade
            .updateSeriesBookmarksAndBookmarksCount(
          userUID: state.session.uid,
          seriesUID: state.series.uid,
        );

        final isBookmarked = !state.isBookmarked;

        final count = state.bookmarksCount.copyWith(
          count: state.bookmarksCount.count + (isBookmarked ? 1 : -1),
        );

        yield state.copyWith(
          bookmarksCount: count,
          isBookmarked: isBookmarked,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      configFetchedEVT: (event) async* {
        var chapter = state.chapterOne;

        final failureOrSuccess = await _onlineChapterDatabaseFacade
            .loadFirstChapter(state.series.uid)
          ..fold(
            (_) {},
            (success) {
              if (success is ChapterLoadedSCS) {
                chapter = success.chapter;
              }
            },
          );

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          chapterOne: chapter,
          configDatabaseFailureOrSuccessOption: none(),
        );

        if (failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.firstChapterLoadedEVT());
        }
      },
      firstChapterLoadedEVT: (event) async* {
        Either<DatabaseFailure, SeriesDatabaseSuccess> failureOrSuccess;

        if (!_authenticationFacade.isAnonymous()) {
          failureOrSuccess =
              await _onlineSeriesDatabaseFacade.updateSeriesViewsAndViewsCount(
            userUID: state.session.uid,
            seriesUID: state.series.uid,
          );
        }

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.seriesViewsUpdatedEVT());
        }
      },
      likeButtonPressedEVT: (event) async* {
        final failureOrSuccess =
            await _onlineSeriesDatabaseFacade.updateSeriesLikesAndLikesCount(
          userUID: state.session.uid,
          seriesUID: state.series.uid,
        );

        final isLiked = !state.isLiked;

        final count = state.likesCount.copyWith(
          count: state.likesCount.count + (isLiked ? 1 : -1),
        );

        yield state.copyWith(
          isLiked: !state.isLiked,
          likesCount: count,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesBookmarksLoadedEVT: (event) async* {
        var isLiked = state.isLiked;

        final failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadUserLikeStatus(
          userUID: state.session.uid,
          seriesUID: state.series.uid,
        )
              ..fold(
                (_) {},
                (success) {
                  if (success is SeriesStatsStatusLoadedSCS) {
                    isLiked = success.status;
                  }
                },
              );

        yield state.copyWith(
          isLiked: isLiked,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.seriesLikeStatusLoadedEVT());
        }
      },
      seriesLikesLoadedEVT: (event) async* {
        Either<DatabaseFailure, SeriesDatabaseSuccess> failureOrSuccess;

        var bookmarksCount = Count(count: 0);

        if (state.config.enableSeriesBookmarksCount) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade
              .loadSeriesBookmarksCount(state.series.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesStatsCountLoadedSCS) {
                  bookmarksCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (!_authenticationFacade.isAnonymous() &&
            (failureOrSuccess == null || failureOrSuccess.isRight())) {
          add(const SeriesDatabaseEvent.seriesBookmarksLoadedEVT());
        }
      },
      seriesLikeStatusLoadedEVT: (event) async* {
        var isBookmarked = state.isBookmarked;

        final failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadUserBookmarkStatus(
          userUID: state.session.uid,
          seriesUID: state.series.uid,
        )
              ..fold(
                (_) {},
                (success) {
                  if (success is SeriesStatsStatusLoadedSCS) {
                    isBookmarked = success.status;
                  }
                },
              );

        yield state.copyWith(
          isBookmarked: isBookmarked,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesLaunchedEVT: (event) async* {
        var session = state.session;

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    session = success.session;
                  }
                },
              );

        yield state.copyWith(
          series: event.series,
          session: session,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.sessionFetchedEVT());
        }
      },
      seriesViewsLoadedEVT: (event) async* {
        Either<DatabaseFailure, SeriesDatabaseSuccess> failureOrSuccess;

        var likesCount = Count(count: 0);

        if (state.config.enableSeriesLikesCount) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade
              .loadSeriesLikesCount(state.series.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesStatsCountLoadedSCS) {
                  likesCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          likesCount: likesCount,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.seriesLikesLoadedEVT());
        }
      },
      seriesViewsUpdatedEVT: (event) async* {
        var viewsCount = Count(count: 0);

        Either<DatabaseFailure, SeriesDatabaseSuccess> failureOrSuccess;

        if (state.config.enableSeriesViewsCount) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade
              .loadSeriesViewsCount(state.series.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesStatsCountLoadedSCS) {
                  viewsCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.seriesViewsLoadedEVT());
        }
      },
      sessionFetchedEVT: (event) async* {
        var config = state.config;

        final failureOrSuccess = await _localConfigDatabaseFacade.fetchConfig()
          ..fold(
            (_) {},
            (success) {
              if (success is ConfigFetchedSuccess) {
                config = success.config;
              }
            },
          );

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        if (failureOrSuccess.isRight()) {
          add(const SeriesDatabaseEvent.configFetchedEVT());
        }
      },
    );
  }
}
