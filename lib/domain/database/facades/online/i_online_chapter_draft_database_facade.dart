import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/models/chapter.dart';

/// @nodoc
abstract class IOnlineChapterDraftDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraft({String chapterDraftUID, String seriesDraftUID});

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraftCover(String coverURL);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> loadChapterDraft(
    String chapterDraftUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      loadChapterDraftsByUserUID(String userUID);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> saveChapterDraft(
    Chapter chapterDraft,
  );
}
