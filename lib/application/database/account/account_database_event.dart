part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseEvent with _$AccountDatabaseEvent {
  const factory AccountDatabaseEvent.accountPageLaunched({
    BuildContext context,
  }) = AccountPageLaunched;
  const factory AccountDatabaseEvent.fetchMoreSeries() = FetchMoreSeries;
  const factory AccountDatabaseEvent.fetchMoreChapters() = FetchMoreChapters;
}
