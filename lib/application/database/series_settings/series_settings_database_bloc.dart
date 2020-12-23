import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/hive/config.dart';

part 'series_settings_database_bloc.freezed.dart';
part 'series_settings_database_event.dart';
part 'series_settings_database_state.dart';

/// @nodoc
@injectable
class SeriesSettingsDatabaseBloc
    extends Bloc<SeriesSettingsDatabaseEvent, SeriesSettingsDatabaseState> {
  /// @nodoc
  SeriesSettingsDatabaseBloc(
    this._localConfigDatabaseFacade,
  ) : super(SeriesSettingsDatabaseState.initial());

  final ILocalConfigDatabaseFacade _localConfigDatabaseFacade;

  @override
  Stream<SeriesSettingsDatabaseState> mapEventToState(
    SeriesSettingsDatabaseEvent event,
  ) async* {
    yield* event.map(
      enableBookmarksCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableSeriesBookmarksCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      enableLikesCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableSeriesLikesCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      enableViewsCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableSeriesViewsCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesSettingsLaunchedEVT: (event) async* {
        yield state.copyWith(isLoading: true);

        var config = state.config;

        final failureOrSuccess = await _localConfigDatabaseFacade.fetchConfig()
          ..fold(
            (_) {},
            (success) {
              if (success is ConfigFetchedSCS) {
                config = success.config;
              }
            },
          );

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isLoading: false,
        );
      },
    );
  }
}
