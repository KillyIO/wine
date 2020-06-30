part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseEvent with _$AccountDatabaseEvent {
  const factory AccountDatabaseEvent.accountPageLaunchedEVT({@required BuildContext context}) = AccountPageLaunchedEVT;
  const factory AccountDatabaseEvent.chaptersLoadedEVT() = ChaptersLoadedEVT;
  const factory AccountDatabaseEvent.loadMoreChaptersEVT() = LoadMoreChaptersEVT;
  const factory AccountDatabaseEvent.loadMoreSeriesEVT() = LoadMoreSeriesEVT;
  const factory AccountDatabaseEvent.seriesLoadedEVT() = SeriesLoadedEVT;
  const factory AccountDatabaseEvent.seriesAsMapLoadedEVT() = SeriesAsMapLoadedEVT;
  const factory AccountDatabaseEvent.sessionFetchedEVT(Session session) = SessionFetchedEVT;
}
