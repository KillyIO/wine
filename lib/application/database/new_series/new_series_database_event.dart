part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseEvent with _$NewSeriesDatabaseEvent {
  const factory NewSeriesDatabaseEvent.newSeriesPageLaunched({
    SeriesDraft seriesDraft,
  }) = NewSeriesPageLaunched;
  const factory NewSeriesDatabaseEvent.continueButtonPressed() =
      ContinueButtonPressed;
  const factory NewSeriesDatabaseEvent.titleChanged(
    String title,
  ) = TitleChanged;
  const factory NewSeriesDatabaseEvent.descriptionChanged(
    String description,
  ) = DescriptionChanged;
  const factory NewSeriesDatabaseEvent.genreSelected(
    String genre,
  ) = GenreSelected;
  const factory NewSeriesDatabaseEvent.genreOptionalSelected(
    String genreOptional,
  ) = GenreOptionalSelected;
  const factory NewSeriesDatabaseEvent.languageSelected(
    String language,
  ) = LanguageSelected;
  const factory NewSeriesDatabaseEvent.copyrightsSelected(
    String copyrights,
  ) = CopyrightsSelected;
}
