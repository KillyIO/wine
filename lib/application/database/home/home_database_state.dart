part of 'home_database_bloc.dart';

/// @nodoc
@freezed
abstract class HomeDatabaseState with _$HomeDatabaseState {
  /// @nodoc
  const factory HomeDatabaseState({
    @required bool areFiltersApplied,
    @required bool isLoading,
    @required List<bool> layoutDataUpdated,
    @required List<Series> newSeriesList,
    @required List<Series> topFiveSeriesList,
    @required List<Series> topSeriesList,
    @required Map<String, dynamic> filters,
    @required
        Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
            seriesDatabaseFailureOrSuccessOption,
    @required String genreFilterKey,
    @required String languageFilterKey,
    @required String timeFilterKey,
  }) = _HomeDatabaseState;

  /// @nodoc
  factory HomeDatabaseState.initial() => HomeDatabaseState(
        areFiltersApplied: true,
        filters: <String, dynamic>{},
        genreFilterKey: '',
        isLoading: false,
        languageFilterKey: '',
        layoutDataUpdated: <bool>[],
        newSeriesList: <Series>[],
        seriesDatabaseFailureOrSuccessOption: none(),
        timeFilterKey: 'today',
        topFiveSeriesList: <Series>[],
        topSeriesList: <Series>[],
      );
}
