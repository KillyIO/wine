part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseState with _$AccountDatabaseState {
  const factory AccountDatabaseState({
    @required Session session,
    @required List<Series> series,
    @required List<Chapter> chapters,
    @required Map<String, String> genres,
    @required Map<String, String> languages,
    @required Map<String, String> copyrights,
    @required List<String> placeholders,
    @required List<int> placeholderIndexes,
    @required bool isFetching,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _AccountSettingsState;

  factory AccountDatabaseState.initial() => AccountDatabaseState(
        session: Session(),
        series: <Series>[],
        chapters: <Chapter>[],
        genres: <String, String>{},
        languages: <String, String>{},
        copyrights: <String, String>{},
        placeholders: <String>[],
        placeholderIndexes: <int>[],
        isFetching: false,
        databaseFailureOrSuccessOption: none(),
      );
}
