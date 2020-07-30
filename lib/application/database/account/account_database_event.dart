part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseEvent with _$AccountDatabaseEvent {
  const factory AccountDatabaseEvent.accountPageLaunchedEVT({@required BuildContext context}) = AccountPageLaunchedEVT;
  const factory AccountDatabaseEvent.chapterTileHeldEVT(String seriesUid) = ChapterTileHeldEVT;
  const factory AccountDatabaseEvent.loadMoreChaptersMinifiedEVT() = LoadMoreChaptersMinifiedEVT;
  const factory AccountDatabaseEvent.loadMoreSeriesMinifiedEVT() = LoadMoreSeriesMinifiedEVT;
  const factory AccountDatabaseEvent.seriesMinifiedLoadedEVT() = SeriesMinifiedLoadedEVT;
  const factory AccountDatabaseEvent.sessionFetchedEVT({Session session}) = SessionFetchedEVT;
}
