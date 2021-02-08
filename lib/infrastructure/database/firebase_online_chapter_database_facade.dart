import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:path/path.dart' as p;

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/utils/extensions.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IOnlineChapterDatabaseFacade)
class FirebaseOnlineChapterDatabaseFacade
    implements IOnlineChapterDatabaseFacade {
  /// @nodoc
  FirebaseOnlineChapterDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
  );

  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> deleteChapter(
    String chapterUID,
  ) async {
    final ref = _firestore.collection(Paths.chaptersPath).doc(chapterUID);

    await ref.delete();
    return right(const ChapterDatabaseSuccess.chapterDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> deleteChapterCover(
    String coverURL,
  ) async {
    final storageReference = _firebaseStorage.refFromURL(coverURL);

    await storageReference.delete();
    return right(const ChapterDatabaseSuccess.chapterCoverDeletedSCS());
  }

  Future<List<String>> _loadBookmarkedChaptersUIDList(
    String userUID, {
    Chapter lastChapter,
  }) async {
    final chaptersBookmarksCollection =
        _firestore.collection(Paths.chaptersBookmarksPath);

    Query query;
    if (lastChapter != null) {
      final lastDocument =
          await chaptersBookmarksCollection.doc(lastChapter.uid).get();

      query = chaptersBookmarksCollection
          .startAfterDocument(lastDocument)
          .where(userUID, isEqualTo: true);
    } else {
      query = chaptersBookmarksCollection.where(userUID, isEqualTo: true);
    }
    query.limit(20);

    final querySnapshot = await query.get();

    final uidsList = <String>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      uidsList.add(doc.id);
    }

    return uidsList.toSet().toList();
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadBookmarkedChaptersByUserUID(
    String userUID, {
    Chapter lastChapter,
  }) async {
    final uidsList =
        await _loadBookmarkedChaptersUIDList(userUID, lastChapter: lastChapter);

    if (uidsList.isNotEmpty) {
      final chaptersCollection = _firestore.collection(Paths.chaptersPath);

      final querySnapshot =
          await chaptersCollection.where('uid', whereIn: uidsList).get();

      final chapters = <Chapter>[];
      if (querySnapshot.docs.isNotEmpty) {
        for (final DocumentSnapshot doc in querySnapshot.docs) {
          chapters.add(Chapter.fromFirestore(doc));
        }
      }

      return right(ChapterDatabaseSuccess.chaptersLoadedSCS(chapters));
    }

    return right(const ChapterDatabaseSuccess.chaptersLoadedSCS(<Chapter>[]));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadChapterBookmarksCount(String chapterUID) async {
    final documentSnapshot = await _firestore
        .collection(Paths.chaptersBookmarksCountsPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }
    final count = Count.fromFirestore(documentSnapshot);
    return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(count));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterByUID(
    String chapterUID,
  ) async {
    final ref = _firestore.collection(Paths.chaptersPath).doc(chapterUID);

    final snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final chapter = Chapter.fromFirestore(snapshot);
      return right(ChapterDatabaseSuccess.chapterLoadedSCS(chapter));
    }
    return left(const DatabaseFailure.failedToLoadOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterLikesCount(
    String chapterUID,
  ) async {
    final documentSnapshot = await _firestore
        .collection(Paths.chaptersLikesCountsPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }
    final count = Count.fromFirestore(documentSnapshot);
    return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(count));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadChaptersBySeriesUIDAndIndex(String seriesUID, int index) async {
    final chaptersCollection = _firestore.collection(Paths.chaptersPath);

    final querySnapshot = await chaptersCollection
        .where('seriesUID', isEqualTo: seriesUID)
        .where('index', isEqualTo: index)
        .get();

    final chapters = <Chapter>[];
    if (querySnapshot.docs.isNotEmpty) {
      for (final DocumentSnapshot document in querySnapshot.docs) {
        chapters.add(Chapter.fromFirestore(document));
      }
    }

    return right(ChapterDatabaseSuccess.chaptersLoadedSCS(chapters));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChaptersByUserUID(
    String uid, {
    Chapter lastChapter,
  }) async {
    final chaptersCollection = _firestore.collection(Paths.chaptersPath);

    Query query;
    if (lastChapter != null) {
      final lastDocument = await chaptersCollection.doc(lastChapter.uid).get();

      query = chaptersCollection
          .startAfterDocument(lastDocument)
          .where('authorUID', isEqualTo: uid);
    } else {
      query = chaptersCollection.where('authorUID', isEqualTo: uid);
    }
    query.orderBy('createdAt', descending: true).limit(20);

    final querySnapshot = await query.get();

    final chapters = <Chapter>[];
    if (querySnapshot.docs.isNotEmpty) {
      for (final DocumentSnapshot doc in querySnapshot.docs) {
        chapters.add(Chapter.fromFirestore(doc));
      }
    }

    return right(ChapterDatabaseSuccess.chaptersLoadedSCS(chapters));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterViewsCount(
    String chapterUID,
  ) async {
    final documentSnapshot = await _firestore
        .collection(Paths.chaptersViewsCountsPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }
    final count = Count.fromFirestore(documentSnapshot);
    return right(ChapterDatabaseSuccess.chapterStatsCountLoadedSCS(count));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadFirstChapter(
    String seriesUID,
  ) async {
    final chaptersCollection = _firestore.collection(Paths.chaptersPath);

    final querySnapshot = await chaptersCollection
        .where('seriesUID', isEqualTo: seriesUID)
        .where('index', isEqualTo: 1)
        .get();

    final chapter = Chapter.fromFirestore(querySnapshot.docs.first);

    return right(ChapterDatabaseSuccess.chapterLoadedSCS(chapter));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadNextChaptersAuthorsMap(String chapterUID) async {
    final documentSnapshot = await _firestore
        .collection(Paths.nextChaptersAuthorsPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(const ChapterDatabaseSuccess.nextChaptersAuthorsMapLoadedSCS(
        {},
      ));
    }
    final nextChapterAuthorsMap = documentSnapshot.data();
    return right(ChapterDatabaseSuccess.nextChaptersAuthorsMapLoadedSCS(
      nextChapterAuthorsMap,
    ));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadUserBookmarkStatus({String userUID, String chapterUID}) async {
    final documentSnapshot = await _firestore
        .collection(Paths.chaptersBookmarksPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(const ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(
        status: false,
      ));
    }

    final data = documentSnapshot.data();
    final isBookmarked = data[userUID] as bool;

    if (isBookmarked != null) {
      return right(ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(
        status: isBookmarked,
      ));
    }
    return right(const ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(
      status: false,
    ));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadUserLikeStatus({
    String userUID,
    String chapterUID,
  }) async {
    final documentSnapshot = await _firestore
        .collection(Paths.chaptersLikesPath)
        .doc(chapterUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(const ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(
        status: false,
      ));
    }

    final data = documentSnapshot.data();
    final isLiked = data[userUID] as bool;

    if (isLiked != null) {
      return right(
          ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(status: isLiked));
    }
    return right(const ChapterDatabaseSuccess.chapterStatsStatusLoadedSCS(
      status: false,
    ));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> publishChapter(
    Chapter chapter,
  ) async {
    if (!chapter.coverURL.isURL) {
      final result = await uploadCover(File(chapter.coverURL));

      if (result.isLeft()) {
        return result;
      }

      result.fold(
        (_) {},
        (success) {
          if (success is ChapterCoverUploadedSCS) {
            chapter = chapter.copyWith(coverURL: success.coverURL);
          }
        },
      );
    }

    final chapterRef =
        _firestore.collection(Paths.chaptersPath).doc(chapter.uid);

    final options = SetOptions(merge: true);
    await chapterRef.set(chapter.toMap(), options);

    if (chapter.previousChapterUID != null) {
      final nextChaptersCountsRef = _firestore
          .collection(Paths.nextChaptersAuthorsPath)
          .doc(chapter.previousChapterUID);

      await nextChaptersCountsRef.set({chapter.authorUID: true}, options);
    }

    return right(ChapterDatabaseSuccess.chapterPublishedSCS(chapter));
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterBookmarksAndBookmarksCount({
    String userUID,
    String chapterUID,
  }) async {
    final chaptersBookmarksCountsReference = _firestore
        .collection(Paths.chaptersBookmarksCountsPath)
        .doc(chapterUID);
    final chaptersBookmarksReference =
        _firestore.collection(Paths.chaptersBookmarksPath).doc(chapterUID);

    final documentSnapshot = await chaptersBookmarksReference.get();

    bool isBookmarked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data()[userUID] as bool == null) {
      isBookmarked = false;
    } else {
      isBookmarked = documentSnapshot.data()[userUID] as bool;
    }

    await Future.wait([
      !documentSnapshot.exists
          ? chaptersBookmarksCountsReference.set(
              {
                'count': FieldValue.increment(!isBookmarked ? 1 : -1),
                'createdAt': DateTime.now(),
                'updatedAt': DateTime.now(),
              },
              SetOptions(merge: true),
            )
          : chaptersBookmarksCountsReference.set(
              {
                'count': FieldValue.increment(!isBookmarked ? 1 : -1),
                'updatedAt': DateTime.now(),
              },
              SetOptions(mergeFields: <FieldPath>[
                FieldPath.fromString('count'),
                FieldPath.fromString('updatedAt')
              ]),
            ),
      chaptersBookmarksReference.set(
        {userUID: !isBookmarked},
        SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
      )
    ]);

    return right(const ChapterDatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterLikesAndLikesCount({
    String userUID,
    String chapterUID,
    bool isInit = false,
  }) async {
    final chaptersLikesCountsReference =
        _firestore.collection(Paths.chaptersLikesCountsPath).doc(chapterUID);
    final chaptersLikesReference =
        _firestore.collection(Paths.chaptersLikesPath).doc(chapterUID);

    final documentSnapshot = await chaptersLikesReference.get();

    bool isLiked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data()[userUID] as bool == null) {
      isLiked = false;
    } else {
      isLiked = documentSnapshot.data()[userUID] as bool;
    }

    await Future.wait([
      isInit
          ? chaptersLikesCountsReference.set(
              {
                'count': FieldValue.increment(!isLiked ? 1 : -1),
                'createdAt': DateTime.now(),
                'updatedAt': DateTime.now(),
              },
              SetOptions(merge: true),
            )
          : chaptersLikesCountsReference.set(
              {
                'count': FieldValue.increment(!isLiked ? 1 : -1),
                'updatedAt': DateTime.now(),
              },
              SetOptions(mergeFields: <FieldPath>[
                FieldPath.fromString('count'),
                FieldPath.fromString('updatedAt')
              ]),
            ),
      chaptersLikesReference.set(
        {userUID: !isLiked},
        SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
      ),
    ]);

    return right(const ChapterDatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterViewsAndViewsCount({
    String userUID,
    String chapterUID,
    bool isInit = false,
  }) async {
    final chaptersViewsCountsReference =
        _firestore.collection(Paths.chaptersViewsCountsPath).doc(chapterUID);
    final chaptersViewsReference =
        _firestore.collection(Paths.chaptersViewsPath).doc(chapterUID);

    final documentSnapshot = await chaptersViewsReference.get();

    if (!documentSnapshot.exists || documentSnapshot.data()[userUID] == null) {
      await Future.wait([
        isInit
            ? chaptersViewsCountsReference.set(
                {
                  'count': FieldValue.increment(1),
                  'createdAt': DateTime.now(),
                  'updatedAt': DateTime.now(),
                },
                SetOptions(merge: true),
              )
            : chaptersViewsCountsReference.set(
                {
                  'count': FieldValue.increment(1),
                  'updatedAt': DateTime.now(),
                },
                SetOptions(mergeFields: <FieldPath>[
                  FieldPath.fromString('count'),
                  FieldPath.fromString('updatedAt')
                ]),
              ),
        chaptersViewsReference.set(
          {userUID: true},
          SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
        )
      ]);
    }
    return right(const ChapterDatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> uploadCover(
    File cover,
  ) async {
    final fileName = p.basename(cover.path);
    final ref = _firebaseStorage.ref().child(
        '${Paths.chapterCoversPaths}/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final uploadTask = await ref.putFile(cover);
    final state = uploadTask.state;
    if (state == TaskState.success) {
      final url = await ref.getDownloadURL();
      return right(ChapterDatabaseSuccess.chapterCoverUploadedSCS(url));
    }
    return left(const DatabaseFailure.failedToCreateOnlineData());
  }
}
