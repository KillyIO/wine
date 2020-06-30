import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

@LazySingleton(as: ILocalChapterDraftDatabaseFacade)
class HiveLocalChapterDatabaseFacade implements ILocalChapterDraftDatabaseFacade {
  final Box<ChapterDraft> _chapterDraftsBox;

  HiveLocalChapterDatabaseFacade(this._chapterDraftsBox);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapterDraft(String uid) async {
    await _chapterDraftsBox.delete(uid);

    final ChapterDraft chapterDraft = _chapterDraftsBox.get(uid);
    if (chapterDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(const DatabaseSuccess.chapterDraftDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchChapterDraft(
    String uid,
  ) async {
    final ChapterDraft chapterDraft = _chapterDraftsBox.get(uid);

    if (chapterDraft != null) {
      return right(DatabaseSuccess.chapterDraftFetchedSCS(chapterDraft));
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveChapterDraft(
    ChapterDraft chapterDraft,
  ) async {
    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final ChapterDraft chapterDraftTest = _chapterDraftsBox.get(chapterDraft.uid);
    if (chapterDraftTest != null) {
      return right(const DatabaseSuccess.chapterDraftSavedSCS());
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterDraft(
    ChapterDraft chapterDraft,
  ) async {
    final ChapterDraft outdatedChapterDraft = _chapterDraftsBox.get(chapterDraft.uid);

    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final ChapterDraft currentChapterDraft = _chapterDraftsBox.get(chapterDraft.uid);
    if (currentChapterDraft != outdatedChapterDraft) {
      return right(const DatabaseSuccess.chapterDraftUpdatedSCS());
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
