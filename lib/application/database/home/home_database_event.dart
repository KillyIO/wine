part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseEvent with _$HomeDatabaseEvent {
  const factory HomeDatabaseEvent.applyFilterChangesEVT() = ApplyFilterChangesEVT;
  const factory HomeDatabaseEvent.filtersAppliedEVT() = FiltersAppliedEVT;
  const factory HomeDatabaseEvent.genreFilterKeyChangedEVT(String key) = GenreFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.homePageLaunchedEVT({BuildContext context}) = HomePageLaunchedEVT;
  const factory HomeDatabaseEvent.languageFilterKeyChangedEVT(String key) = LanguageFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.loadMoreNewSeriesMinifiedEVT() = LoadMoreNewSeriesMinifiedEVT;
  const factory HomeDatabaseEvent.loadMoreTopSeriesMinifiedEVT() = LoadMoreTopSeriesMinifiedEVT;
  const factory HomeDatabaseEvent.timeFilterKeyChangedEVT(String key) = TimeFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.topSeriesMinifiedLoadedEVT() = TopSeriesMinifiedLoadedEVT;
}
