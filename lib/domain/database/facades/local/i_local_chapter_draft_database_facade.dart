import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

/// @nodoc
abstract class ILocalChapterDraftDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraft(String chapterDraftUID);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      fetchChapterDraft(String chapterDraftUID);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> saveChapterDraft(
    ChapterDraft chapterDraft,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      updateChapterDraft(ChapterDraft chapterDraft);
}
