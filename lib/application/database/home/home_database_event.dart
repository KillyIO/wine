part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseEvent with _$HomeDatabaseEvent {
  const factory HomeDatabaseEvent.homePageLaunched({
    BuildContext context,
  }) = HomePageLaunched;
  const factory HomeDatabaseEvent.fetchMoreTopSeries() = FetchMoreTopSeries;
  const factory HomeDatabaseEvent.fetchMoreNewSeries() = FetchMoreNewSeries;
  const factory HomeDatabaseEvent.timeFilterKeyChanged(String key) =
      TimeFilterKeyChanged;
  const factory HomeDatabaseEvent.genreFilterKeyChanged(String key) =
      GenreFilterKeyChanged;
  const factory HomeDatabaseEvent.languageFilterKeyChanged(String key) =
      LanguageFilterKeyChanged;
  const factory HomeDatabaseEvent.applyFilterChanges() = ApplyFilterChanges;
}
