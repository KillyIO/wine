part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required Title title,
    @required Subtitle subtitle,
    @required Description description,
    @required Genre genre,
    @required String genreStr,
    @required Genre genreOptional,
    @required String genreOptionalStr,
    @required Language language,
    @required String languageStr,
    @required Copyrights copyrights,
    @required String copyrightsStr,
    @required bool isSaving,
    @required bool isSaved,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        title: Title(''),
        subtitle: Subtitle(''),
        description: Description(''),
        genre: Genre(''),
        genreStr: '',
        genreOptional: Genre(''),
        genreOptionalStr: '',
        language: Language(''),
        languageStr: '',
        copyrights: Copyrights(''),
        copyrightsStr: '',
        isSaving: false,
        isSaved: false,
      );
}
