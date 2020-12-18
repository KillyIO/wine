import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';

/// @nodoc
@LazySingleton(as: ILocalChapterDraftDatabaseFacade)
class HiveLocalChapterDatabaseFacade
    implements ILocalChapterDraftDatabaseFacade {
  /// @nodoc
  HiveLocalChapterDatabaseFacade(this._chapterDraftsBox);

  final Box<ChapterDraft> _chapterDraftsBox;

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraft(String uid) async {
    await _chapterDraftsBox.delete(uid);

    final chapterDraft = _chapterDraftsBox.get(uid);
    if (chapterDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(
      const ChapterDraftDatabaseSuccess.localChapterDraftDeletedSCS(),
    );
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      fetchChapterDraft(String uid) async {
    final chapterDraft = _chapterDraftsBox.get(uid);

    if (chapterDraft != null) {
      return right(
        ChapterDraftDatabaseSuccess.chapterDraftFetchedSCS(chapterDraft),
      );
    }
    return left(const DatabaseFailure.failedToFetchLocalData());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> saveChapterDraft(
    ChapterDraft chapterDraft,
  ) async {
    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final chapterDraftTest = _chapterDraftsBox.get(chapterDraft.uid);
    if (chapterDraftTest != null) {
      return right(
        const ChapterDraftDatabaseSuccess.localChapterDraftSavedSCS(),
      );
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      updateChapterDraft(ChapterDraft chapterDraft) async {
    final outdatedChapterDraft = _chapterDraftsBox.get(chapterDraft.uid);

    await _chapterDraftsBox.put(chapterDraft.uid, chapterDraft);

    final currentChapterDraft = _chapterDraftsBox.get(chapterDraft.uid);
    if (currentChapterDraft != outdatedChapterDraft) {
      return right(
        const ChapterDraftDatabaseSuccess.localChapterDraftUpdatedSCS(),
      );
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
