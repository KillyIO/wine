part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required Title title,
    @required int titleWordCount,
    @required Subtitle subtitle,
    @required int subtitleWordCount,
    @required Summary summary,
    @required int summaryWordCount,
    @required Genre genre,
    @required String genreStr,
    @required Genre genreOptional,
    @required String genreOptionalStr,
    @required Language language,
    @required String languageStr,
    @required Copyrights copyrights,
    @required String copyrightsStr,
    @required bool isCreating,
    @required bool showErrorMessages,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        title: Title(''),
        titleWordCount: 0,
        subtitle: Subtitle(''),
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryWordCount: 0,
        genre: Genre(''),
        genreStr: '',
        genreOptional: Genre('', isOptional: true),
        genreOptionalStr: '',
        language: Language(''),
        languageStr: '',
        copyrights: Copyrights(''),
        copyrightsStr: '',
        isCreating: false,
        showErrorMessages: false,
        databaseFailureOrSuccessOption: none(),
      );
}
