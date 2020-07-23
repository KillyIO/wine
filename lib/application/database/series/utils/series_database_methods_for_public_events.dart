import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';

mixin SeriesDatabaseMethodsForPublicEvents on Bloc<SeriesDatabaseEvent, SeriesDatabaseState> {
  Stream<SeriesDatabaseState> updateSeriesBookmarks(IOnlineSeriesDatabaseFacade onlineSeriesDatabaseFacade) async* {
    final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
        await onlineSeriesDatabaseFacade.updateSeriesBookmarks(userUid: state.session.uid, seriesUid: state.series.uid);
    failureOrSuccess.fold(
      (_) {},
      (success) {
        if (success is SeriesStatsCountUpdatedSCS) {
          add(const SeriesDatabaseEvent.bookmarksUpdatedEVT());
        }
      },
    );

    yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), isBookmarked: !state.isBookmarked);
  }

  Stream<SeriesDatabaseState> updateSeriesLikesAndLikesCount(
    IOnlineSeriesDatabaseFacade onlineSeriesDatabaseFacade,
  ) async* {
    final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await onlineSeriesDatabaseFacade
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
  }
}
