import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

abstract class ILocalChapterDraftDatabaseFacade {
  // SECTION Chapter Draft
  Future<Either<DatabaseFailure, Unit>> saveChapterDraft(
    ChapterDraft chapterDraft,
  );
  Future<Either<DatabaseFailure, ChapterDraft>> getChapterDraft(String uid);
  Future<Either<DatabaseFailure, Unit>> updateChapterDraft(
    ChapterDraft chapterDraft,
  );
  Future<Either<DatabaseFailure, Unit>> deleteChapterDraft(String uid);
}
