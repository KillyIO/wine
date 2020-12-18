import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_series_database_facade.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/getters.dart';

part 'home_database_bloc.freezed.dart';
part 'home_database_event.dart';
part 'home_database_state.dart';

/// @nodoc
@injectable
class HomeDatabaseBloc extends Bloc<HomeDatabaseEvent, HomeDatabaseState>
    with Getters {
  /// @nodoc
  HomeDatabaseBloc(this._onlineSeriesDatabaseFacade)
      : super(HomeDatabaseState.initial());

  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

  @override
  Stream<HomeDatabaseState> mapEventToState(HomeDatabaseEvent event) async* {
    yield* event.map(
      applyFiltersButtonPressedEVT: (event) async* {
        final filters = state.filters;

        filters['time'] = timeFiltersTimestamps[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = state.languageFilterKey;

        final layoutDataUpdated = <bool>[];
        for (var i = 0; i < homeNavbarItemsKeys.length; i++) {
          layoutDataUpdated.add(false);
        }

        yield state.copyWith(
          areFiltersApplied: true,
          filters: filters,
          layoutDataUpdated: layoutDataUpdated,
        );

        add(homeFiltersAppliedOrPageViewIndexChangedEvents[event.index]);
      },
      filtersAppliedAtLaunchEVT: (event) async* {
        final topFiveSeriesList = <Series>[];
        final topSeriesList = <Series>[];

        final failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadTopSeriesList(state.filters)
              ..fold(
                (_) {},
                (success) {
                  if (success is SeriesListLoadedSCS) {
                    topSeriesList.addAll(success.seriesList);

                    if (topSeriesList.length >= 5) {
                      topFiveSeriesList.addAll(topSeriesList.sublist(0, 5));
                      topSeriesList.removeRange(0, 5);
                    }
                  }
                },
              );

        final layoutDataUpdated = state.layoutDataUpdated..first = true;

        yield state.copyWith(
          isLoading: false,
          layoutDataUpdated: layoutDataUpdated,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          topFiveSeriesList: topFiveSeriesList,
          topSeriesList: topSeriesList,
        );
      },
      filtersAppliedOrPageViewIndexChangedFromTopSeriesLayout: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.first) {
          yield* resetFailureOrSuccessOptions();

          final topFiveSeriesList = <Series>[];
          final topSeriesList = <Series>[];

          final failureOrSuccess =
              await _onlineSeriesDatabaseFacade.loadTopSeriesList(state.filters)
                ..fold(
                  (_) {},
                  (success) {
                    if (success is SeriesListLoadedSCS) {
                      topSeriesList.addAll(success.seriesList);

                      if (topSeriesList.length >= 5) {
                        topFiveSeriesList.addAll(topSeriesList.sublist(0, 5));
                        topSeriesList.removeRange(0, 5);
                      }
                    }
                  },
                );

          layoutDataUpdated.first = true;

          yield state.copyWith(
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
            seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            topFiveSeriesList: topFiveSeriesList,
            topSeriesList: topSeriesList,
          );
        }
      },
      filtersAppliedOrPageViewIndexChangedFromNewSeriesLayout: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated[1]) {
          yield* resetFailureOrSuccessOptions();

          final newSeriesList = <Series>[];

          final failureOrSuccess =
              await _onlineSeriesDatabaseFacade.loadNewSeriesList(state.filters)
                ..fold(
                  (_) {},
                  (success) {
                    if (success is SeriesListLoadedSCS) {
                      newSeriesList.addAll(success.seriesList);
                    }
                  },
                );

          layoutDataUpdated[1] = true;

          yield state.copyWith(
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
            newSeriesList: newSeriesList,
            seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
      genreFilterKeyChangedEVT: (event) async* {
        yield state.copyWith(
          genreFilterKey: state.genreFilterKey == event.key ? '' : event.key,
          areFiltersApplied: false,
          seriesDatabaseFailureOrSuccessOption: none(),
        );
      },
      homeLaunchedEVT: (event) async* {
        yield state.copyWith(
          isLoading: true,
          seriesDatabaseFailureOrSuccessOption: none(),
        );

        final filters = state.filters;

        final currentLocale = (await DeviceLocale.getCurrentLocale())
            .toString()
            .split(RegExp('[_-]'))
            .first;

        filters['time'] = timeFiltersTimestamps[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = currentLocale;

        final layoutDataUpdated = <bool>[];
        for (var i = 0; i < homeNavbarItemsKeys.length; i++) {
          layoutDataUpdated.add(false);
        }

        yield state.copyWith(
          filters: filters,
          languageFilterKey: currentLocale,
          layoutDataUpdated: layoutDataUpdated,
        );

        add(const HomeDatabaseEvent.filtersAppliedAtLaunchEVT());
      },
      languageFilterKeyChangedEVT: (event) async* {
        if (state.languageFilterKey != event.key) {
          yield state.copyWith(
            languageFilterKey: event.key,
            areFiltersApplied: false,
            seriesDatabaseFailureOrSuccessOption: none(),
          );
        }
      },
      loadMoreNewSeriesEVT: (event) async* {},
      loadMoreTopSeriesEVT: (event) async* {},
      seriesPublishedEVT: (event) async* {
        final newSeriesList = state.newSeriesList..insert(0, event.series);

        yield state.copyWith(
          newSeriesList: newSeriesList,
          seriesDatabaseFailureOrSuccessOption: none(),
        );
      },
      timeFilterKeyChangedEVT: (event) async* {
        if (state.timeFilterKey != event.key) {
          yield state.copyWith(
            timeFilterKey: event.key,
            areFiltersApplied: false,
            seriesDatabaseFailureOrSuccessOption: none(),
          );
        }
      },
    );
  }

  /// @nodoc
  Stream<HomeDatabaseState> resetFailureOrSuccessOptions() async* {
    yield state.copyWith(
      isLoading: true,
      seriesDatabaseFailureOrSuccessOption: none(),
    );
  }
}
