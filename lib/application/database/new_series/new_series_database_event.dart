part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseEvent with _$NewSeriesDatabaseEvent {
  const factory NewSeriesDatabaseEvent.newSeriesPageLaunched({
    SeriesDraft seriesDraft,
  }) = NewSeriesPageLaunched;
  const factory NewSeriesDatabaseEvent.createSeriesButtonPressed() =
      CreateSeriesButtonPressed;
  const factory NewSeriesDatabaseEvent.titleChanged(
    String title,
  ) = TitleChanged;
  const factory NewSeriesDatabaseEvent.subtitleChanged(
    String subtitle,
  ) = SubtitleChanged;
  const factory NewSeriesDatabaseEvent.summaryChanged(
    String summary,
  ) = SummaryChanged;
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
  const factory NewSeriesDatabaseEvent.isNSFWChanged({
    @required bool isNSFW,
  }) = IsNSFWChanged;
}
