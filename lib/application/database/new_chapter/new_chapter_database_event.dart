part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseEvent with _$NewChapterDatabaseEvent {
  const factory NewChapterDatabaseEvent.addCoverPressedEVT() = AddCoverPressedEVT;
  const factory NewChapterDatabaseEvent.chapterCoverDeletedEVT() = ChapterCoverDeletedEVT;
  const factory NewChapterDatabaseEvent.chapterCoverUploadedEVT(
    String coverUrl,
    ChapterDraft chapterDraft,
  ) = ChapterCoverUploadedEVT;
  const factory NewChapterDatabaseEvent.chapterPublishedEVT(Chapter chapter) = ChapterPublishedEVT;
  const factory NewChapterDatabaseEvent.copyrightsSelectedEVT(String copyrights) = CopyrightsSelectedEVT;
  const factory NewChapterDatabaseEvent.deleteDraftButtonPressedEVT() = DeleteDraftButtonPressedEVT;
  const factory NewChapterDatabaseEvent.editModeLaunchedEVT(ChapterDraft chapterDraft) = EditModeLaunchedEVT;
  const factory NewChapterDatabaseEvent.failureWhenPublishingChapterEVT(String coverUrl) =
      FailureWhenPublishingChapterEVT;
  const factory NewChapterDatabaseEvent.failureWhenPublishingSeriesEVT({String coverUrl}) =
      FailureWhenPublishingSeriesEVT;
  const factory NewChapterDatabaseEvent.failureWhenUploadingSeriesCoverEVT() = FailureWhenUploadingSeriesCoverEVT;
  const factory NewChapterDatabaseEvent.genreOptionalSelectedEVT(String genreOptional) = GenreOptionalSelectedEVT;
  const factory NewChapterDatabaseEvent.genreSelectedEVT(String genre) = GenreSelectedEVT;
  const factory NewChapterDatabaseEvent.isEndChangedEVT({@required bool isEnd}) = IsEndChangedEVT;
  const factory NewChapterDatabaseEvent.isNSFWChangedEVT({@required bool isNSFW}) = IsNSFWChangedEVT;
  const factory NewChapterDatabaseEvent.languageSelectedEVT(String language) = LanguageSelectedEVT;
  const factory NewChapterDatabaseEvent.newChapterPageLaunchedEVT({
    @required BuildContext context,
    Chapter previousChapter,
    ChapterDraft chapterDraft,
    SeriesDraft seriesDraft,
  }) = NewChapterPageLaunchedEVT;
  const factory NewChapterDatabaseEvent.placeholderFetchedEVT({
    Chapter previousChapter,
    SeriesDraft seriesDraft,
    @required String coverUrl,
  }) = PlaceholderFetchedEVT;
  const factory NewChapterDatabaseEvent.publishButtonPressedEVT() = PublishButtonPressedEVT;
  const factory NewChapterDatabaseEvent.saveOrBackButtonPressedEVT() = SaveOrBackButtonPressedEVT;
  const factory NewChapterDatabaseEvent.seriesCoverDeletedEVT() = SeriesCoverDeletedEVT;
  const factory NewChapterDatabaseEvent.seriesCoverUploadedEVT(
    String coverUrl,
    SeriesDraft seriesDraft,
  ) = SeriesCoverUploadedEVT;
  const factory NewChapterDatabaseEvent.seriesDraftDeletedEVT() = SeriesDraftDeletedEVT;
  const factory NewChapterDatabaseEvent.seriesDraftFetchedEVT(SeriesDraft seriesDraft) = SeriesDraftFetchedEVT;
  const factory NewChapterDatabaseEvent.seriesPublishedEVT(Series series) = SeriesPublishedEVT;
  const factory NewChapterDatabaseEvent.sessionFetchedEVT({
    Chapter previousChapter,
    SeriesDraft seriesDraft,
  }) = SessionFetchedEVT;
  const factory NewChapterDatabaseEvent.storyChangedEVT(String story) = StoryChangedEVT;
  const factory NewChapterDatabaseEvent.titleChangedEVT(String title) = TitleChangedEVT;
}
