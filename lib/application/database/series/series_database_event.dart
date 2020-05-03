part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  const factory SeriesDatabaseEvent.newSeriesBackButtonPressed() =
      NewSeriesBackButtonPressed;
  const factory SeriesDatabaseEvent.newSeriesGenreSelected(
    String genre,
  ) = NewSeriesGenreSelected;
  const factory SeriesDatabaseEvent.newSeriesTitleChanged(Title title) =
      NewSeriesTitleChanged;
}
