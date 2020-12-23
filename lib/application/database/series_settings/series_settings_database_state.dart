part of 'series_settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesSettingsDatabaseState with _$SeriesSettingsDatabaseState {
  /// @nodoc
  const factory SeriesSettingsDatabaseState({
    @required bool isLoading,
    @required Config config,
    @required
        Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
            configDatabaseFailureOrSuccessOption,
  }) = _SeriesSettingsDatabaseState;

  /// @nodoc
  factory SeriesSettingsDatabaseState.initial() => SeriesSettingsDatabaseState(
        config: Config(),
        configDatabaseFailureOrSuccessOption: none(),
        isLoading: false,
      );
}
