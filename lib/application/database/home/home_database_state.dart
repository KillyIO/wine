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
    @required List<String> placeholderUrls,
    @required bool isFetching,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
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
        placeholderUrls: <String>[],
        isFetching: false,
        databaseFailureOrSuccessOption: none(),
      );
}
