import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

@lazySingleton
@RegisterAs(ILocalChapterDraftDatabaseFacade)
class HiveLocalChapterDatabaseFacade
    implements ILocalChapterDraftDatabaseFacade {
  final Box<ChapterDraft> _chapterDraftsBox;

  HiveLocalChapterDatabaseFacade(this._chapterDraftsBox);

  @override
  Future<Either<DatabaseFailure, Unit>> saveChapterDraft(
    ChapterDraft chapterDraft,
  ) async {
    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final ChapterDraft chapterDraftTest =
        _chapterDraftsBox.get(chapterDraft.uid);
    if (chapterDraftTest != null) {
      return right(unit);
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraft>> getChapterDraft(
    String uid,
  ) async {
    final ChapterDraft chapterDraft = _chapterDraftsBox.get(uid);

    if (chapterDraft != null) {
      return right(chapterDraft);
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateChapterDraft(
    ChapterDraft chapterDraft,
  ) async {
    final ChapterDraft outdatedChapterDraft =
        _chapterDraftsBox.get(chapterDraft.uid);

    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final ChapterDraft currentChapterDraft =
        _chapterDraftsBox.get(chapterDraft.uid);
    if (currentChapterDraft != outdatedChapterDraft) {
      return right(unit);
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteChapterDraft(String uid) async {
    await _chapterDraftsBox.delete(uid);

    final ChapterDraft chapterDraft = _chapterDraftsBox.get(uid);
    if (chapterDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(unit);
  }
}
