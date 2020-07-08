part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseEvent with _$NewSeriesDatabaseEvent {
  const factory NewSeriesDatabaseEvent.addCoverPressedEVT() = AddCoverPressedEVT;
  const factory NewSeriesDatabaseEvent.chapterDraftDeletedEVT() = ChapterDraftDeletedEVT;
  const factory NewSeriesDatabaseEvent.deleteDraftButtonPressedEVT() = DeleteDraftButtonPressedEVT;
  const factory NewSeriesDatabaseEvent.editModeLaunchedEVT(SeriesDraft seriesDraft) = EditModeLaunchedEVT;
  const factory NewSeriesDatabaseEvent.genreOptionalSelectedEVT(String genreOptional) = GenreOptionalSelectedEVT;
  const factory NewSeriesDatabaseEvent.genreSelectedEVT(String genre) = GenreSelectedEVT;
  const factory NewSeriesDatabaseEvent.isNSFWChangedEVT({@required bool isNSFW}) = IsNSFWChangedEVT;
  const factory NewSeriesDatabaseEvent.languageSelectedEVT(String language) = LanguageSelectedEVT;
  const factory NewSeriesDatabaseEvent.newSeriesPageLaunchedEVT({
    SeriesDraft seriesDraft,
    @required BuildContext context,
  }) = NewSeriesPageLaunchedEVT;
  const factory NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT() = SaveSeriesDraftButtonPressedEVT;
  const factory NewSeriesDatabaseEvent.sessionFetchedEVT({
    @required Session session,
    @required SeriesDraft seriesDraft,
  }) = SessionFetchedEVT;
  const factory NewSeriesDatabaseEvent.subtitleChangedEVT(String subtitle) = SubtitleChangedEVT;
  const factory NewSeriesDatabaseEvent.summaryChangedEVT(String summary) = SummaryChangedEVT;
  const factory NewSeriesDatabaseEvent.titleChangedEVT(String title) = TitleChangedEVT;
}
