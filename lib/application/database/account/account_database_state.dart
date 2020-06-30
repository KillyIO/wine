part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseState with _$AccountDatabaseState {
  const factory AccountDatabaseState({
    @required bool isFetching,
    @required List<Chapter> chapters,
    @required List<Series> series,
    @required Map<String, Series> seriesMap,
    @required Map<String, SeriesDraft> seriesDraftsMap,
    @required Map<String, String> copyrights,
    @required Map<String, String> genres,
    @required Map<String, String> languages,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Session session,
  }) = _AccountSettingsState;

  factory AccountDatabaseState.initial() => AccountDatabaseState(
        chapters: <Chapter>[],
        copyrights: <String, String>{},
        databaseFailureOrSuccessOption: none(),
        genres: <String, String>{},
        isFetching: false,
        languages: <String, String>{},
        series: <Series>[],
        seriesDraftsMap: <String, SeriesDraft>{},
        seriesMap: <String, Series>{},
        session: Session(),
      );
}
