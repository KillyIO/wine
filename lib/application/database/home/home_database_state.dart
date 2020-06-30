part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseState with _$HomeDatabaseState {
  const factory HomeDatabaseState({
    @required List<Series> topFiveSeries,
    @required List<Series> topSeries,
    @required List<Series> newSeries,
    @required Map<String, dynamic> filters,
    @required String timeFilterKey,
    @required String genreFilterKey,
    @required String languageFilterKey,
    @required bool areFiltersApplied,
    @required Map<String, String> timesMap,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required bool isLoading,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _HomeDatabaseState;

  factory HomeDatabaseState.initial() => HomeDatabaseState(
        topFiveSeries: <Series>[],
        topSeries: <Series>[],
        newSeries: <Series>[],
        filters: <String, dynamic>{},
        timeFilterKey: 'today',
        genreFilterKey: '',
        languageFilterKey: '',
        areFiltersApplied: true,
        timesMap: <String, String>{},
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
        isLoading: false,
        databaseFailureOrSuccessOption: none(),
      );
}
