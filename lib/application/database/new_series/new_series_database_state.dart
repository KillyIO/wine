part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required bool isCreatingOrDeleting,
    @required bool isEditMode,
    @required bool isNSFW,
    @required bool showErrorMessages,
    @required Genre genre,
    @required Genre genreOptional,
    @required int subtitleWordCount,
    @required int summaryWordCount,
    @required int titleWordCount,
    @required Language language,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
    @required Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
    @required SeriesDraft seriesDraft,
    @required String coverUrl,
    @required String genreOptionalStr,
    @required String genreStr,
    @required String languageStr,
    @required String subtitleStr,
    @required String summaryStr,
    @required String titleStr,
    @required Subtitle subtitle,
    @required Summary summary,
    @required TextEditingController subtitleController,
    @required TextEditingController summaryController,
    @required TextEditingController titleController,
    @required Title title,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        coverUrl: '',
        databaseFailureOrSuccessOption: none(),
        genre: Genre(''),
        genreOptional: Genre('', isOptional: true),
        genreOptionalStr: '',
        genresMap: <String, String>{},
        genreStr: '',
        isCreatingOrDeleting: false,
        isEditMode: false,
        isNSFW: false,
        language: Language(''),
        languagesMap: <String, String>{},
        languageStr: '',
        seriesDraft: SeriesDraft(),
        showErrorMessages: false,
        subtitle: Subtitle(''),
        subtitleController: TextEditingController(),
        subtitleStr: '',
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryController: TextEditingController(),
        summaryStr: '',
        summaryWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleStr: '',
        titleWordCount: 0,
      );
}