import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'chapter_draft_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class ChapterDraftDatabaseSuccess with _$ChapterDraftDatabaseSuccess {
  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.localChapterDraftDeletedSCS() =
      LocalChapterDraftDeletedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.localChapterDraftSavedSCS() =
      LocalChapterDraftSavedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.localChapterDraftUpdatedSCS() =
      LocalChapterDraftUpdatedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.onlineChapterDraftDeletedSCS() =
      OnlineChapterDraftDeletedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.chapterDraftLoadedSCS(
    Chapter chapterDraft,
  ) = ChapterDraftLoadedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.chapterDraftsLoadedSCS(
    List<Chapter> chapterDrafts,
  ) = ChapterDraftsLoadedSCS;

  /// @nodoc
  const factory ChapterDraftDatabaseSuccess.onlineChapterDraftSavedSCS(
    Chapter chapterDraft,
  ) = OnlineChapterDraftSavedSCS;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory ChapterDraftDatabaseSuccess.onlineChapterDraftCoverDeletedSCS() =
      OnlineChapterDraftCoverDeletedSCS;
}
