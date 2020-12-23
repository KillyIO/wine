part of 'chapter_settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class ChapterSettingsDatabaseState
    with _$ChapterSettingsDatabaseState {
  /// @nodoc
  const factory ChapterSettingsDatabaseState({
    @required bool isLoading,
    @required Config config,
    @required
        Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
            configDatabaseFailureOrSuccessOption,
  }) = _ChapterSettingsDatabaseState;

  /// @nodoc
  factory ChapterSettingsDatabaseState.initial() =>
      ChapterSettingsDatabaseState(
        config: Config(),
        configDatabaseFailureOrSuccessOption: none(),
        isLoading: false,
      );
}
