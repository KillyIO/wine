import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IOnlineChapterDatabaseFacade)
class FirebaseOnlineChapterDatabaseFacade implements IOnlineChapterDatabaseFacade {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;

  FirebaseOnlineChapterDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
  );

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapter(String chapterUid) async {
    final DocumentReference ref = _firestore.collection(Paths.chaptersPath).document(chapterUid);

    await ref.delete();
    return right(const DatabaseSuccess.chapterDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapterCover(String coverUrl) async {
    final StorageReference storageReference = await _firebaseStorage.getReferenceFromUrl(coverUrl);

    await storageReference.delete();
    return right(const DatabaseSuccess.chapterCoverDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterBookmarksCount(String chapterUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.chaptersBookmarksPath).document(chapterUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.chapterStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> bookmarks = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.chapterStatsCountLoadedSCS(bookmarks.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterByUid(String chapterUid) async {
    final DocumentReference ref = _firestore.collection(Paths.chaptersPath).document(chapterUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Chapter chapter = Chapter.fromFirestore(snapshot);
      return right(DatabaseSuccess.chapterLoadedSCS(chapter));
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterLikesCount(String chapterUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.chaptersLikesPath).document(chapterUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.chapterStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> likes = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.chapterStatsCountLoadedSCS(likes.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersMinifiedBySeriesUidAndIndex(
    String seriesUid,
    int index,
  ) async {
    final CollectionReference chaptersMinifiedCollection = _firestore.collection(Paths.chaptersMinifiedPath);

    final QuerySnapshot querySnapshot = await chaptersMinifiedCollection
        .where('seriesUid', isEqualTo: seriesUid)
        .where('index', isEqualTo: index)
        .getDocuments();

    final List<ChapterMinified> chaptersMinifiedList = <ChapterMinified>[];
    if (querySnapshot.documents.isNotEmpty) {
      for (final DocumentSnapshot document in querySnapshot.documents) {
        chaptersMinifiedList.add(ChapterMinified.fromFirestore(document));
      }
    }

    return right(DatabaseSuccess.chapterMinifiedListLoadedSCS(chaptersMinifiedList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersMinifiedByUserUid(
    String uid, {
    ChapterMinified lastChapterMinified,
  }) async {
    final CollectionReference chaptersMinifiedCollection = _firestore.collection(Paths.chaptersMinifiedPath);

    QuerySnapshot querySnapshot;
    if (lastChapterMinified != null) {
      final DocumentSnapshot lastDocument = await chaptersMinifiedCollection.document(lastChapterMinified.uid).get();

      querySnapshot = await chaptersMinifiedCollection
          .startAfterDocument(lastDocument)
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await chaptersMinifiedCollection
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<ChapterMinified> chaptersMinifiedList = <ChapterMinified>[];
    if (querySnapshot.documents.isNotEmpty) {
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersMinifiedList.add(ChapterMinified.fromFirestore(doc));
      }
    }

    return right(DatabaseSuccess.chapterMinifiedListLoadedSCS(chaptersMinifiedList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterViewsCount(String chapterUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.chaptersViewsPath).document(chapterUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.chapterStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> views = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.chapterStatsCountLoadedSCS(views.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadFirstChapter(String seriesUid) async {
    final CollectionReference chaptersCollection = _firestore.collection(Paths.chaptersPath);

    final QuerySnapshot querySnapshot =
        await chaptersCollection.where('seriesUid', isEqualTo: seriesUid).where('index', isEqualTo: 1).getDocuments();

    final Chapter chapterOne = Chapter.fromFirestore(querySnapshot.documents[0]);

    return right(DatabaseSuccess.chapterLoadedSCS(chapterOne));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadFirstChapterMinified(String seriesUid) async {
    final CollectionReference chaptersMinifiedCollection = _firestore.collection(Paths.chaptersMinifiedPath);

    final QuerySnapshot querySnapshot = await chaptersMinifiedCollection
        .where('seriesUid', isEqualTo: seriesUid)
        .where('index', isEqualTo: 1)
        .getDocuments();

    final ChapterMinified chapterOneMinified = ChapterMinified.fromFirestore(querySnapshot.documents[0]);

    return right(DatabaseSuccess.chapterMinifiedLoadedSCS(chapterOneMinified));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserBookmarkStatus({String userUid, String chapterUid}) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.chaptersBookmarksPath).document(chapterUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.chapterStatsStatusLoadedSCS(status: false));
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isBookmarked = data[userUid] as bool;

    if (isBookmarked != null) {
      return right(DatabaseSuccess.chapterStatsStatusLoadedSCS(status: isBookmarked));
    }
    return right(const DatabaseSuccess.chapterStatsStatusLoadedSCS(status: false));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserLikeStatus({String userUid, String chapterUid}) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.chaptersLikesPath).document(chapterUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.chapterStatsStatusLoadedSCS(status: false));
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isLiked = data[userUid] as bool;

    if (isLiked != null) {
      return right(DatabaseSuccess.chapterStatsStatusLoadedSCS(status: isLiked));
    }
    return right(const DatabaseSuccess.chapterStatsStatusLoadedSCS(status: false));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishChapter(
    ChapterMinified chapterMinified,
    Chapter chapter,
  ) async {
    final DocumentReference chapterMinifiedRef =
        _firestore.collection(Paths.chaptersMinifiedPath).document(chapterMinified.uid);
    final DocumentReference chapterRef = _firestore.collection(Paths.chaptersPath).document(chapter.uid);

    chapterMinified
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    Future.wait([
      chapterMinifiedRef.setData(chapterMinified.toMap(), merge: true),
      chapterRef.setData(chapter.toMap(), merge: true),
    ]);

    return right(const DatabaseSuccess.chapterPublishedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterBookmarks({String userUid, String chapterUid}) async {
    final DocumentReference chaptersBookmarksReference =
        _firestore.collection(Paths.chaptersBookmarksPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot = await chaptersBookmarksReference.get();

    bool isBookmarked;
    if (!documentSnapshot.exists || documentSnapshot.data[userUid] as bool == null) {
      isBookmarked = false;
    } else {
      isBookmarked = documentSnapshot.data[userUid] as bool;
    }

    await chaptersBookmarksReference.setData({userUid: !isBookmarked}, merge: true);
    return right(const DatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterLikes({String userUid, String chapterUid}) async {
    final DocumentReference chaptersLikesReference =
        _firestore.collection(Paths.chaptersLikesPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot = await chaptersLikesReference.get();

    bool isLiked;
    if (!documentSnapshot.exists || documentSnapshot.data[userUid] as bool == null) {
      isLiked = false;
    } else {
      isLiked = documentSnapshot.data[userUid] as bool;
    }

    await chaptersLikesReference.setData({userUid: !isLiked}, merge: true);
    return right(const DatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterViews({String userUid, String chapterUid}) async {
    final DocumentReference chaptersViewsReference =
        _firestore.collection(Paths.chaptersViewsPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot = await chaptersViewsReference.get();

    if (!documentSnapshot.exists || documentSnapshot.data[userUid] == null) {
      await chaptersViewsReference.setData({userUid: true}, merge: true);
    }
    return right(const DatabaseSuccess.chapterStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> uploadCover(File cover) async {
    final String fileName = p.basename(cover.path);
    final StorageReference ref =
        _firebaseStorage.ref().child('${Paths.chapterCoversPaths}/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final StorageUploadTask uploadTask = ref.putFile(cover);
    final StorageTaskSnapshot result = await uploadTask.onComplete;
    final String url = await result.ref.getDownloadURL() as String;
    return right(DatabaseSuccess.chapterCoverUploadedSCS(url));
  }
}
