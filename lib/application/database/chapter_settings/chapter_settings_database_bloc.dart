import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/hive/config.dart';

part 'chapter_settings_database_bloc.freezed.dart';
part 'chapter_settings_database_event.dart';
part 'chapter_settings_database_state.dart';

/// @nodoc
@injectable
class ChapterSettingsDatabaseBloc
    extends Bloc<ChapterSettingsDatabaseEvent, ChapterSettingsDatabaseState> {
  /// @nodoc
  ChapterSettingsDatabaseBloc(
    this._localConfigDatabaseFacade,
  ) : super(ChapterSettingsDatabaseState.initial());

  final ILocalConfigDatabaseFacade _localConfigDatabaseFacade;

  @override
  Stream<ChapterSettingsDatabaseState> mapEventToState(
    ChapterSettingsDatabaseEvent event,
  ) async* {
    yield* event.map(
      chapterSettingsLaunchedEVT: (event) async* {
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
        );
      },
      enableBookmarksCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableChaptersBookmarksCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      enableLikesCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableChaptersLikesCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      enableViewsCountToggledEVT: (event) async* {
        yield state.copyWith(configDatabaseFailureOrSuccessOption: none());

        final config = state.config..enableChaptersViewsCount = event.value;

        final failureOrSuccess =
            await _localConfigDatabaseFacade.updateConfig(config);

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
