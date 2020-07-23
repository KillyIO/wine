part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseState with _$AccountDatabaseState {
  const factory AccountDatabaseState({
    @required bool isFetching,
    @required List<ChapterMinified> chaptersMinified,
    @required List<SeriesMinified> seriesMinified,
    @required Map<String, String> copyrights,
    @required Map<String, String> genres,
    @required Map<String, String> languages,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Session session,
  }) = _AccountDatabaseState;

  factory AccountDatabaseState.initial() => AccountDatabaseState(
        chaptersMinified: <ChapterMinified>[],
        copyrights: <String, String>{},
        databaseFailureOrSuccessOption: none(),
        genres: <String, String>{},
        isFetching: false,
        languages: <String, String>{},
        seriesMinified: <SeriesMinified>[],
        session: Session(),
      );
}
