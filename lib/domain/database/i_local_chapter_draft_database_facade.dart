import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

abstract class ILocalChapterDraftDatabaseFacade {
  // SECTION Chapter Draft
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapterDraft(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchChapterDraft(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveChapterDraft(ChapterDraft chapterDraft);
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterDraft(ChapterDraft chapterDraft);
}
