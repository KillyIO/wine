part of 'home_database_bloc.dart';

/// @nodoc
@freezed
abstract class HomeDatabaseEvent with _$HomeDatabaseEvent {
  /// @nodoc
  const factory HomeDatabaseEvent.applyFiltersButtonPressedEVT(int index) =
      ApplyFiltersButtonPressedEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.filtersAppliedAtLaunchEVT() =
      FiltersAppliedAtLaunchEVT;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory HomeDatabaseEvent.filtersAppliedOrPageViewIndexChangedFromTopSeriesLayout() =
      FiltersAppliedOrPageViewIndexChangedFromTopSeriesLayout;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory HomeDatabaseEvent.filtersAppliedOrPageViewIndexChangedFromNewSeriesLayout() =
      FiltersAppliedOrPageViewIndexChangedFromNewSeriesLayout;

  /// @nodoc
  const factory HomeDatabaseEvent.genreFilterKeyChangedEVT(String key) =
      GenreFilterKeyChangedEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.homeLaunchedEVT(BuildContext context) =
      HomeLaunchedEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.languageFilterKeyChangedEVT(String key) =
      LanguageFilterKeyChangedEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.loadMoreNewSeriesEVT() = LoadMoreNewSeriesEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.loadMoreTopSeriesEVT() = LoadMoreTopSeriesEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.seriesPublishedEVT(Series series) =
      SeriesPublishedEVT;

  /// @nodoc
  const factory HomeDatabaseEvent.timeFilterKeyChangedEVT(String key) =
      TimeFilterKeyChangedEVT;
}
