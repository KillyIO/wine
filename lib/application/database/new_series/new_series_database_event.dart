part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseEvent with _$NewSeriesDatabaseEvent {
  const factory NewSeriesDatabaseEvent.newSeriesPageLaunched() =
      NewSeriesPageLaunched;
  const factory NewSeriesDatabaseEvent.newSeriesBackButtonPressed() =
      NewSeriesBackButtonPressed;
  const factory NewSeriesDatabaseEvent.newSeriesGenreSelected(
    String genre,
  ) = NewSeriesGenreSelected;
  const factory NewSeriesDatabaseEvent.newSeriesTitleChanged(String title) =
      NewSeriesTitleChanged;
  const factory NewSeriesDatabaseEvent.newSeriesDescriptionChanged(
    String description,
  ) = NewSeriesDescriptionChanged;
}
