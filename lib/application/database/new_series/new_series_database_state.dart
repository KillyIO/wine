part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required bool isEditMode,
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
    @required bool isNSFW,
    @required bool isCreating,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required bool showErrorMessages,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        isEditMode: false,
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
        isNSFW: false,
        isCreating: false,
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
        showErrorMessages: false,
        databaseFailureOrSuccessOption: none(),
      );
}
