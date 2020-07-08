import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/methods.dart';

part 'home_database_event.dart';
part 'home_database_state.dart';

part 'home_database_bloc.freezed.dart';

@injectable
class HomeDatabaseBloc extends Bloc<HomeDatabaseEvent, HomeDatabaseState> {
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

  StreamSubscription<Either<DatabaseFailure, DatabaseSuccess>> _topSeriesStreamSubscription;
  StreamSubscription<Either<DatabaseFailure, DatabaseSuccess>> _newSeriesStreamSubscription;

  HomeDatabaseBloc(this._onlineSeriesDatabaseFacade) : super(HomeDatabaseState.initial());

  @override
  Stream<HomeDatabaseState> mapEventToState(HomeDatabaseEvent event) async* {
    yield* event.map(
      applyFilterChangesEVT: (event) async* {
        yield state.copyWith(isLoading: true, databaseFailureOrSuccessOption: none());

        final Map<String, dynamic> filters = state.filters;

        filters['time'] = Methods.getTimeFiltersTimestamps()[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = state.languageFilterKey;

        add(HomeDatabaseEvent.filtersAppliedEVT(filters));

        yield state.copyWith(areFiltersApplied: true);
      },
      filtersAppliedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final List<Series> topFiveSeries = <Series>[];
        final List<Series> topSeries = <Series>[];

        failureOrSuccess = await _onlineSeriesDatabaseFacade.loadTopSeries(filters: event.filters, loadAuthors: true);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesListLoadedSCS) {
              topSeries.addAll(success.series);
              if (topSeries.length >= 5) {
                topFiveSeries.addAll(topSeries.sublist(0, 5));
                topSeries.removeRange(0, 5);
              }
              add(const HomeDatabaseEvent.topSeriesLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          topFiveSeries: topFiveSeries,
          topSeries: topSeries,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      genreFilterKeyChangedEVT: (event) async* {
        yield state.copyWith(
          genreFilterKey: state.genreFilterKey == event.key ? '' : event.key,
          areFiltersApplied: false,
          databaseFailureOrSuccessOption: none(),
        );
      },
      homePageLaunchedEVT: (event) async* {
        yield state.copyWith(isLoading: true, databaseFailureOrSuccessOption: none());

        final Map<String, dynamic> filters = state.filters;

        final String currentLocale = (await DeviceLocale.getCurrentLocale()).toString().split(RegExp('[_-]'))[0];

        filters['time'] = Methods.getTimeFiltersTimestamps()[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = currentLocale;

        add(HomeDatabaseEvent.filtersAppliedEVT(filters));

        yield state.copyWith(
          filters: filters,
          languageFilterKey: currentLocale,
          timesMap: Methods.getTimeFilters(event.context),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
        );
      },
      languageFilterKeyChangedEVT: (event) async* {
        if (state.languageFilterKey != event.key) {
          yield state.copyWith(
            languageFilterKey: event.key,
            areFiltersApplied: false,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      loadMoreNewSeriesEVT: (event) async* {},
      loadMoreTopSeriesEVT: (event) async* {},
      timeFilterKeyChangedEVT: (event) async* {
        if (state.timeFilterKey != event.key) {
          yield state.copyWith(
            timeFilterKey: event.key,
            areFiltersApplied: false,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      topSeriesLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final List<Series> newSeries = <Series>[];

        failureOrSuccess = await _onlineSeriesDatabaseFacade.loadNewSeries(filters: state.filters, loadAuthors: true);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesListLoadedSCS) {
              newSeries.addAll(success.series);
            }
          },
        );

        yield state.copyWith(
          newSeries: newSeries,
          isLoading: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _topSeriesStreamSubscription.cancel();
    await _newSeriesStreamSubscription.cancel();
    return super.close();
  }
}
