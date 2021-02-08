import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:wine/domain/models/chapter.dart';

part 'chapter_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class ChapterDatabaseSuccess with _$ChapterDatabaseSuccess {
  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterCoverDeletedSCS() =
      ChapterCoverDeletedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterCoverUploadedSCS(
    String coverURL,
  ) = ChapterCoverUploadedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterDeletedSCS() = ChapterDeletedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chaptersLoadedSCS(
    List<Chapter> chapters,
  ) = ChaptersLoadedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterLoadedSCS(Chapter chapter) =
      ChapterLoadedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterPublishedSCS(Chapter chapter) =
      ChapterPublishedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(Count count) =
      ChapterStatsCountLoadedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterStatsCountUpdatedSCS() =
      ChapterStatsCountUpdatedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS({
    @required bool status,
  }) = ChapterStatsStatusLoadedSCS;

  /// @nodoc
  const factory ChapterDatabaseSuccess.nextChaptersAuthorsMapLoadedSCS(
    Map<String, bool> nextChaptersAuthorsMap,
  ) = NextChaptersAuthorsMapLoadedSCS;
}
