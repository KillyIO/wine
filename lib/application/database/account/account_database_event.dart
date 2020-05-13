part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseEvent with _$AccountDatabaseEvent {
  const factory AccountDatabaseEvent.accountPageLaunched() =
      AccountPageLaunched;
  const factory AccountDatabaseEvent.seriesButtonPresed() = SeriesButtonPresed;
  const factory AccountDatabaseEvent.chaptersButtonPresed() =
      ChaptersButtonPresed;
  const factory AccountDatabaseEvent.seriesDraftsButtonPresed() =
      SeriesDraftsButtonPresed;
  const factory AccountDatabaseEvent.chapterDraftsButtonPresed() =
      ChapterDraftsButtonPresed;
}
