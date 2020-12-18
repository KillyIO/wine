import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IOnlineChapterDraftDatabaseFacade)
class FirebaseChapterDraftDatabaseFacade
    implements IOnlineChapterDraftDatabaseFacade {
  /// @nodoc
  FirebaseChapterDraftDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
  );

  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraft({
    String chapterDraftUID,
    String seriesDraftUID,
  }) async {
    if (chapterDraftUID != null) {
      final ref =
          _firestore.collection(Paths.chapterDraftsPath).doc(chapterDraftUID);

      await ref.delete();
    } else {
      final chapterDraftsCollection =
          _firestore.collection(Paths.chapterDraftsPath);

      final querySnapshot = await chapterDraftsCollection
          .where('seriesUID', isEqualTo: seriesDraftUID)
          .get();

      final doc = querySnapshot.docs.first;
      final chapterDraft = Chapter.fromFirestore(doc);

      final ref =
          _firestore.collection(Paths.chapterDraftsPath).doc(chapterDraft.uid);

      await ref.delete();
    }

    return right(
      const ChapterDraftDatabaseSuccess.onlineChapterDraftDeletedSCS(),
    );
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      deleteChapterDraftCover(String coverURL) async {
    final storageReference = _firebaseStorage.refFromURL(coverURL);

    await storageReference.delete();
    return right(
      const ChapterDraftDatabaseSuccess.onlineChapterDraftCoverDeletedSCS(),
    );
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> loadChapterDraft(
    String chapterDraftUID,
  ) async {
    final chapterDraftsCollection =
        _firestore.collection(Paths.chapterDraftsPath);

    final querySnapshot =
        await chapterDraftsCollection.doc(chapterDraftUID).get();

    if (querySnapshot.exists) {
      final chapterDraft = Chapter.fromFirestore(querySnapshot);
      return right(ChapterDraftDatabaseSuccess.chapterDraftLoadedSCS(
        chapterDraft,
      ));
    }
    return left(const DatabaseFailure.failedToLoadOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      loadChapterDraftsByUserUID(String userUID) async {
    final chapterDraftsCollection =
        _firestore.collection(Paths.chapterDraftsPath);

    final querySnapshot = await chapterDraftsCollection
        .where('authorUID', isEqualTo: userUID)
        .limit(20)
        .get();

    final chapterDrafts = <Chapter>[];
    for (final doc in querySnapshot.docs) {
      chapterDrafts.add(Chapter.fromFirestore(doc));
    }
    return right(ChapterDraftDatabaseSuccess.chapterDraftsLoadedSCS(
      chapterDrafts,
    ));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>> saveChapterDraft(
    Chapter chapterDraft,
  ) async {
    final chapterDraftRef =
        _firestore.collection(Paths.chapterDraftsPath).doc(chapterDraft.uid);

    await chapterDraftRef.set(chapterDraft.toMap(), SetOptions(merge: true));

    return right(ChapterDraftDatabaseSuccess.onlineChapterDraftSavedSCS(
      chapterDraft,
    ));
  }
}
