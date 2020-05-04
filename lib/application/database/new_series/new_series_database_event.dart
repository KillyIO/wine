part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseEvent with _$NewSeriesDatabaseEvent {
  const factory NewSeriesDatabaseEvent.newSeriesPageLaunched({
    SeriesDraft seriesDraft,
  }) = NewSeriesPageLaunched;
  const factory NewSeriesDatabaseEvent.backButtonPressed() = BackButtonPressed;
  const factory NewSeriesDatabaseEvent.titleChanged(
    String title,
  ) = TitleChanged;
  const factory NewSeriesDatabaseEvent.descriptionChanged(
    String description,
  ) = DescriptionChanged;
  const factory NewSeriesDatabaseEvent.characterChanged(
    String name,
  ) = CharacterChanged;
  const factory NewSeriesDatabaseEvent.addCharacterButtonPressed() =
      AddCharacterButtonPressed;
  const factory NewSeriesDatabaseEvent.removeCharacterButtonPressed(
    int index,
  ) = RemoveCharacterButtonPressed;
  const factory NewSeriesDatabaseEvent.genreSelected(
    String genre,
  ) = GenreSelected;
  const factory NewSeriesDatabaseEvent.languageSelected(
    String language,
  ) = LanguageSelected;
  const factory NewSeriesDatabaseEvent.copyrightSelected(
    String copyright,
  ) = CopyrightSelected;
}
