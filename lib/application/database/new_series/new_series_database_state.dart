part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required bool isEditMode,
    @required String coverUrl,
    @required Title title,
    @required String titleStr,
    @required int titleWordCount,
    @required Subtitle subtitle,
    @required String subtitleStr,
    @required int subtitleWordCount,
    @required Summary summary,
    @required String summaryStr,
    @required int summaryWordCount,
    @required Genre genre,
    @required String genreStr,
    @required Genre genreOptional,
    @required String genreOptionalStr,
    @required Language language,
    @required String languageStr,
    @required bool isNSFW,
    @required bool isCreatingOrDeleting,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required bool showErrorMessages,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        isEditMode: false,
        coverUrl: '',
        title: Title(''),
        titleStr: '',
        titleWordCount: 0,
        subtitle: Subtitle(''),
        subtitleStr: '',
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryStr: '',
        summaryWordCount: 0,
        genre: Genre(''),
        genreStr: '',
        genreOptional: Genre('', isOptional: true),
        genreOptionalStr: '',
        language: Language(''),
        languageStr: '',
        isNSFW: false,
        isCreatingOrDeleting: false,
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
        showErrorMessages: false,
        databaseFailureOrSuccessOption: none(),
      );
}
