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
    @required Map<String, String> times,
    @required Map<String, String> genres,
    @required Map<String, String> languages,
    @required List<String> placeholders,
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
        times: <String, String>{},
        genres: <String, String>{},
        languages: <String, String>{},
        placeholders: <String>[],
        isFetching: false,
        databaseFailureOrSuccessOption: none(),
      );
}
