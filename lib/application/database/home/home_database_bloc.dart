import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/methods.dart';

part 'home_database_event.dart';
part 'home_database_state.dart';

part 'home_database_bloc.freezed.dart';

@injectable
class HomeDatabaseBloc extends Bloc<HomeDatabaseEvent, HomeDatabaseState> {
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  HomeDatabaseBloc(
    this._onlineSeriesDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  );

  @override
  HomeDatabaseState get initialState => HomeDatabaseState.initial();

  @override
  Stream<HomeDatabaseState> mapEventToState(
    HomeDatabaseEvent event,
  ) async* {
    yield* event.map(
      homePageLaunched: (event) async* {
        final Random random = Random();

        yield state.copyWith(
          isFetching: true,
          databaseFailureOrSuccessOption: none(),
        );

        Either<DatabaseFailure, dynamic> failureOrSuccess;
        final Map<String, dynamic> filters = state.filters;

        final List<Series> topFiveSeries = <Series>[];
        final List<Series> topSeries = <Series>[];
        final List<Series> newSeries = <Series>[];
        final List<String> placeholderUrls = <String>[];

        final String currentLocale = (await DeviceLocale.getCurrentLocale())
            .toString()
            .split(RegExp('[_-]'))[0];

        filters['time'] =
            Methods.getTimeFiltersTimestamps()[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = currentLocale;

        failureOrSuccess = await _onlineSeriesDatabaseFacade.getTopSeries(
          filters: filters,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is List<Series>) {
              topSeries.addAll(success);
            }
          },
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.getNewSeries(
            filters: filters,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is List<Series>) {
                newSeries.addAll(success);
              }
            },
          );

          if (failureOrSuccess.isRight()) {
            final List<String> placeholderKeys = Methods.getPlaceholderKeys();
            final List<String> randomKeys = <String>[
              placeholderKeys[random.nextInt(placeholderKeys.length)],
              placeholderKeys[random.nextInt(placeholderKeys.length)],
              placeholderKeys[random.nextInt(placeholderKeys.length)],
            ];

            for (final String key in randomKeys) {
              failureOrSuccess = await _localPlaceholderDatabaseFacade
                  .getPlaceholderUrlByKey(key);
              failureOrSuccess.fold(
                (_) {},
                (success) {
                  if (success is String) {
                    placeholderUrls.add(success);
                  }
                },
              );
            }
          }
        }

        if (topSeries.length >= 5) {
          topFiveSeries.addAll(topSeries.sublist(0, 5));
          topSeries.removeRange(0, 5);
        }

        yield state.copyWith(
          topFiveSeries: topFiveSeries,
          topSeries: topSeries,
          newSeries: newSeries,
          filters: filters,
          languageFilterKey: currentLocale,
          timesMap: Methods.getTimeFilters(event.context),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          placeholderUrls: placeholderUrls,
          isFetching: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      fetchMoreTopSeries: (event) async* {},
      fetchMoreNewSeries: (event) async* {},
      timeFilterKeyChanged: (event) async* {
        if (state.timeFilterKey != event.key) {
          yield state.copyWith(
            timeFilterKey: event.key,
            areFiltersApplied: false,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      genreFilterKeyChanged: (event) async* {
        yield state.copyWith(
          genreFilterKey: state.genreFilterKey == event.key ? '' : event.key,
          areFiltersApplied: false,
          databaseFailureOrSuccessOption: none(),
        );
      },
      languageFilterKeyChanged: (event) async* {
        if (state.languageFilterKey != event.key) {
          yield state.copyWith(
            languageFilterKey: event.key,
            areFiltersApplied: false,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      applyFilterChanges: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;
        final Map<String, dynamic> filters = state.filters;

        final List<Series> topFiveSeries = <Series>[];
        final List<Series> topSeries = <Series>[];
        final List<Series> newSeries = <Series>[];

        yield state.copyWith(
          isFetching: true,
          databaseFailureOrSuccessOption: none(),
        );

        filters['time'] =
            Methods.getTimeFiltersTimestamps()[state.timeFilterKey];
        filters['genre'] = state.genreFilterKey;
        filters['language'] = state.languageFilterKey;

        failureOrSuccess = await _onlineSeriesDatabaseFacade.getTopSeries(
          filters: filters,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is List<Series>) {
              topSeries.addAll(success);
            }
          },
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.getNewSeries(
            filters: filters,
          );
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is List<Series>) {
                newSeries.addAll(success);
              }
            },
          );
        }

        if (topSeries.length >= 5) {
          topFiveSeries.addAll(topSeries.sublist(0, 5));
          topSeries.removeRange(0, 5);
        }

        yield state.copyWith(
          isFetching: false,
          topFiveSeries: topFiveSeries,
          topSeries: topSeries,
          newSeries: newSeries,
          filters: filters,
          areFiltersApplied: true,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
