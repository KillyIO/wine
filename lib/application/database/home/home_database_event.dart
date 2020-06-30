part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseEvent with _$HomeDatabaseEvent {
  const factory HomeDatabaseEvent.applyFilterChangesEVT() = ApplyFilterChangesEVT;
  const factory HomeDatabaseEvent.filtersAppliedEVT(Map<String, dynamic> filters) = FiltersAppliedEVT;
  const factory HomeDatabaseEvent.genreFilterKeyChangedEVT(String key) = GenreFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.homePageLaunchedEVT({BuildContext context}) = HomePageLaunchedEVT;
  const factory HomeDatabaseEvent.languageFilterKeyChangedEVT(String key) = LanguageFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.loadMoreNewSeriesEVT() = LoadMoreNewSeriesEVT;
  const factory HomeDatabaseEvent.loadMoreTopSeriesEVT() = LoadMoreTopSeriesEVT;
  const factory HomeDatabaseEvent.timeFilterKeyChangedEVT(String key) = TimeFilterKeyChangedEVT;
  const factory HomeDatabaseEvent.topSeriesLoadedEVT() = TopSeriesLoadedEVT;
}
