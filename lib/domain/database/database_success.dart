import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';

part 'database_success.freezed.dart';

@freezed
abstract class DatabaseSuccess with _$DatabaseSuccess {
  // SECTION Session
  const factory DatabaseSuccess.sessionDeletedSCS() = SessionDeletedSCS;
  const factory DatabaseSuccess.sessionFetchedSCS(Session session) = SessionFetchedSCS;
  const factory DatabaseSuccess.sessionSavedSCS() = SessionSavedSCS;
  const factory DatabaseSuccess.sessionUpdatedSCS() = SessionUpdatedSCS;
  // SECTION User
  const factory DatabaseSuccess.userAsMapLoadedSCS(Map<String, User> usersMap) = UserAsMapLoadedSCS;
  const factory DatabaseSuccess.userDetailsSavedSCS(User user) = UserDetailsSavedSCS;
  const factory DatabaseSuccess.userLoadedSCS(User user) = UserLoadedSCS;
  // SECTION Series local
  const factory DatabaseSuccess.seriesDraftDeletedSCS() = SeriesDraftDeletedSCS;
  const factory DatabaseSuccess.seriesDraftFetchedSCS(SeriesDraft seriesDraft) = SeriesDraftFetchedSCS;
  const factory DatabaseSuccess.seriesDraftSavedSCS(SeriesDraft seriesDraft) = SeriesDraftSavedSCS;
  const factory DatabaseSuccess.seriesDraftUpdatedSCS() = SeriesDraftUpdatedSCS;
  // SECTION Series online
  const factory DatabaseSuccess.seriesAsMapLoadedSCS(Map<String, Series> seriesMap) = SeriesAsMapLoadedSCS;
  const factory DatabaseSuccess.seriesCoverDeletedSCS() = SeriesCoverDeletedSCS;
  const factory DatabaseSuccess.seriesCoverUploadedSCS(String coverUrl) = SeriesCoverUploadedSCS;
  const factory DatabaseSuccess.seriesDeletedSCS() = SeriesDeletedSCS;
  const factory DatabaseSuccess.seriesListLoadedSCS(List<Series> series) = SeriesListLoadedSCS;
  const factory DatabaseSuccess.seriesLoadedSCS(Series series) = SeriesLoadedSCS;
  const factory DatabaseSuccess.seriesPublishedSCS() = SeriesPublishedSCS;
  const factory DatabaseSuccess.seriesStatsCountLoadedSCS(int count) = SeriesStatsCountLoadedSCS;
  const factory DatabaseSuccess.seriesStatsCountUpdatedSCS() = SeriesStatsCountUpdatedSCS;
  const factory DatabaseSuccess.seriesStatsStatusLoadedSCS({@required bool status}) = SeriesStatsStatusLoadedSCS;
  // SECTION Chapters local
  const factory DatabaseSuccess.chapterDraftDeletedSCS() = ChapterDraftDeletedSCS;
  const factory DatabaseSuccess.chapterDraftFetchedSCS(ChapterDraft chapterDraft) = ChapterDraftFetchedSCS;
  const factory DatabaseSuccess.chapterDraftSavedSCS() = ChapterDraftSavedSCS;
  const factory DatabaseSuccess.chapterDraftUpdatedSCS() = ChapterDraftUpdatedSCS;
  // SECTION Chapters online
  const factory DatabaseSuccess.chapterCoverDeletedSCS() = ChapterCoverDeletedSCS;
  const factory DatabaseSuccess.chapterCoverUploadedSCS(String coverUrl) = ChapterCoverUploadedSCS;
  const factory DatabaseSuccess.chapterDeletedSCS() = ChapterDeletedSCS;
  const factory DatabaseSuccess.chapterListLoadedSCS(List<Chapter> chapters) = ChapterListLoadedSCS;
  const factory DatabaseSuccess.chapterLoadedSCS(Chapter chapter) = ChapterLoadedSCS;
  const factory DatabaseSuccess.chapterPublishedSCS() = ChapterPublishedSCS;
  const factory DatabaseSuccess.chapterStatsCountLoadedSCS(int count) = ChapterStatsCountLoadedSCS;
  const factory DatabaseSuccess.chapterStatsCountUpdatedSCS() = ChapterStatsCountUpdatedSCS;
  const factory DatabaseSuccess.chapterStatsStatusLoadedSCS({@required bool status}) = ChapterStatsStatusLoadedSCS;
  // SECTION Placeholders local
  const factory DatabaseSuccess.placeholderFetchedSCS(String placeholderUrl) = PlaceholderFetchedSCS;
  const factory DatabaseSuccess.placeholdersSavedSCS() = PlaceholdersSavedSCS;
  // SECTION Placeholders online
  const factory DatabaseSuccess.placeholdersLoadedSCS(Map<String, String> placeholders) = PlaceholdersLoadedSCS;
}
