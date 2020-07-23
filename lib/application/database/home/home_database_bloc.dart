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
import 'package:wine/domain/models/series_minified.dart';
import 'package:wine/utils/methods.dart';

part 'home_database_bloc.freezed.dart';
part 'home_database_event.dart';
part 'home_database_state.dart';

@injectable
class HomeDatabaseBloc extends Bloc<HomeDatabaseEvent, HomeDatabaseState> {
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

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

        add(const HomeDatabaseEvent.filtersAppliedEVT());

        yield state.copyWith(areFiltersApplied: true, filters: filters);
      },
      filtersAppliedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final List<SeriesMinified> topFiveSeriesMinified = <SeriesMinified>[];
        final List<SeriesMinified> topSeriesMinified = <SeriesMinified>[];

        failureOrSuccess = await _onlineSeriesDatabaseFacade.loadTopSeriesMinified(state.filters);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesMinifiedListLoadedSCS) {
              topSeriesMinified.addAll(success.seriesMinified);

              if (topSeriesMinified.length >= 5) {
                topFiveSeriesMinified.addAll(topSeriesMinified.sublist(0, 5));
                topSeriesMinified.removeRange(0, 5);
              }

              add(const HomeDatabaseEvent.topSeriesMinifiedLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          topFiveSeriesMinified: topFiveSeriesMinified,
          topSeriesMinified: topSeriesMinified,
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

        add(const HomeDatabaseEvent.filtersAppliedEVT());

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
      loadMoreNewSeriesMinifiedEVT: (event) async* {},
      loadMoreTopSeriesMinifiedEVT: (event) async* {},
      timeFilterKeyChangedEVT: (event) async* {
        if (state.timeFilterKey != event.key) {
          yield state.copyWith(
            timeFilterKey: event.key,
            areFiltersApplied: false,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      topSeriesMinifiedLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final List<SeriesMinified> newSeriesMinified = <SeriesMinified>[];

        failureOrSuccess = await _onlineSeriesDatabaseFacade.loadNewSeriesMinified(state.filters);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesMinifiedListLoadedSCS) {
              newSeriesMinified.addAll(success.seriesMinified);
            }
          },
        );

        yield state.copyWith(
          newSeriesMinified: newSeriesMinified,
          isLoading: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
