part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseState with _$HomeDatabaseState {
  const factory HomeDatabaseState({
    @required bool areFiltersApplied,
    @required bool isLoading,
    @required List<Series> newSeries,
    @required List<Series> topFiveSeries,
    @required List<Series> topSeries,
    @required Map<String, dynamic> filters,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Map<String, String> timesMap,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required String genreFilterKey,
    @required String languageFilterKey,
    @required String timeFilterKey,
  }) = _HomeDatabaseState;

  factory HomeDatabaseState.initial() => HomeDatabaseState(
        areFiltersApplied: true,
        databaseFailureOrSuccessOption: none(),
        filters: <String, dynamic>{},
        genreFilterKey: '',
        genresMap: <String, String>{},
        isLoading: false,
        languageFilterKey: '',
        languagesMap: <String, String>{},
        newSeries: <Series>[],
        timeFilterKey: 'today',
        timesMap: <String, String>{},
        topFiveSeries: <Series>[],
        topSeries: <Series>[],
      );
}
