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
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/methods.dart';

part 'series_database_event.dart';
part 'series_database_state.dart';

part 'series_database_bloc.freezed.dart';

@injectable
class SeriesDatabaseBloc
    extends Bloc<SeriesDatabaseEvent, SeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;

  SeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineChapterDatabaseFacade,
  );

  @override
  SeriesDatabaseState get initialState => SeriesDatabaseState.initial();

  @override
  Stream<SeriesDatabaseState> mapEventToState(
    SeriesDatabaseEvent event,
  ) async* {
    yield* event.map(
      seriesPageLaunched: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        Session session = Session();
        int viewsCount, likesCount, bookmarksCount = 0;
        bool isLiked, isBookmarked = false;

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
              await _onlineSeriesDatabaseFacade.updateSeriesViews(
            userUid: session.uid,
            seriesUid: event.series.uid,
          );

          if (failureOrSuccess.isRight()) {
            failureOrSuccess = await _onlineSeriesDatabaseFacade
                .getSeriesViewsCount(event.series.uid);
            failureOrSuccess.fold(
              (_) {},
              (success) {
                if (success is int) {
                  viewsCount = success;
                }
              },
            );

            if (failureOrSuccess.isRight()) {
              failureOrSuccess = await _onlineSeriesDatabaseFacade
                  .getSeriesLikesCount(event.series.uid);
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
                    await _onlineSeriesDatabaseFacade.getUserLikeStatus(
                  userUid: session.uid,
                  seriesUid: event.series.uid,
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
                  failureOrSuccess = await _onlineSeriesDatabaseFacade
                      .getSeriesBookmarksCount(event.series.uid);
                  failureOrSuccess.fold(
                    (_) {},
                    (success) {
                      if (success is int) {
                        bookmarksCount = success;
                      }
                    },
                  );

                  if (failureOrSuccess.isRight()) {
                    failureOrSuccess =
                        await _onlineSeriesDatabaseFacade.getUserBookmarkStatus(
                      userUid: session.uid,
                      seriesUid: event.series.uid,
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
          series: event.series,
          isLiked: isLiked,
          isBookmarked: isBookmarked,
          viewsCount: viewsCount,
          likesCount: likesCount,
          bookmarksCount: bookmarksCount,
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      likeButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        int likesCount;

        failureOrSuccess =
            await _onlineSeriesDatabaseFacade.updateSeriesLikesAndLikesCount(
          userUid: state.session.uid,
          seriesUid: state.series.uid,
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade
              .getSeriesLikesCount(state.series.uid);
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
            await _onlineSeriesDatabaseFacade.updateSeriesBookmarks(
          userUid: state.session.uid,
          seriesUid: state.series.uid,
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade
              .getSeriesBookmarksCount(state.series.uid);
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
      showMoreSummaryButtonPressed: (event) async* {},
      readChapterOneButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        yield state.copyWith(
          databaseFailureOrSuccessOption: none(),
        );

        Chapter chapterOne = Chapter();

        failureOrSuccess =
            await _onlineChapterDatabaseFacade.getChaptersBySeriesUidAndIndex(
          seriesUid: state.series.uid,
          index: 1,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is Chapter) {
              chapterOne = success;
            }
          },
        );

        yield state.copyWith(
          chapterOne: chapterOne,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
