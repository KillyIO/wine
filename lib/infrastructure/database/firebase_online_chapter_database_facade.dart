import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IOnlineChapterDatabaseFacade)
class FirebaseOnlineChapterDatabaseFacade implements IOnlineChapterDatabaseFacade {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  FirebaseOnlineChapterDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
    this._onlineSeriesDatabaseFacade,
    this._onlineUserDatabaseFacade,
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
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterById(String chapterUid) async {
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
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersBySeriesUidAndIndex(
    String seriesUid,
    int index, {
    bool loadAuthors = false,
    bool loadSeries = false,
  }) async {
    final CollectionReference chaptersCollection = _firestore.collection(Paths.chaptersPath);

    final QuerySnapshot querySnapshot = await chaptersCollection
        .where('seriesUid', isEqualTo: seriesUid)
        .where('index', isEqualTo: index)
        .getDocuments();

    final List<Chapter> chaptersList = <Chapter>[];
    if (!loadAuthors) {
      for (final DocumentSnapshot document in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(document));
      }
    } else {
      final List<String> userUid = <String>[];
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(doc));
        userUid.add(doc.data['authorUid'] as String);

        Map<String, User> usersMap = <String, User>{};

        if (userUid.isNotEmpty) {
          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _onlineUserDatabaseFacade.loadUsersAsMapByUidList(userUid);
          failureOrSuccess.fold(
            (failure) => left(failure),
            (success) {
              if (success is UserAsMapLoadedSCS) {
                usersMap = success.usersMap;
              }
            },
          );

          for (final Chapter chapter in chaptersList) {
            chapter.author = usersMap[chapter.authorUid];
          }
        }
      }
    }
    return right(DatabaseSuccess.chapterListLoadedSCS(chaptersList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersByUserId(
    String uid, {
    Chapter lastChapter,
    bool loadSeries = false,
  }) async {
    final CollectionReference chaptersCollection = _firestore.collection(Paths.chaptersPath);

    QuerySnapshot querySnapshot;
    if (lastChapter != null) {
      final DocumentSnapshot lastDocument = await chaptersCollection.document(lastChapter.uid).get();

      querySnapshot = await chaptersCollection
          .startAfterDocument(lastDocument)
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await chaptersCollection
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Chapter> chaptersList = <Chapter>[];
    if (!loadSeries) {
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(doc));
      }
    } else {
      final List<String> seriesUid = <String>[];
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(doc));
        seriesUid.add(doc.data['seriesUid'] as String);
      }

      if (seriesUid.isNotEmpty) {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesAsMapByUidList(seriesUid);
        failureOrSuccess.fold(
          (failure) => left(failure),
          (success) {
            if (success is SeriesAsMapLoadedSCS) {
              for (final Chapter chapter in chaptersList) {
                chapter.series = success.seriesMap[chapter.seriesUid];
              }
            }
          },
        );
      }
    }
    return right(DatabaseSuccess.chapterListLoadedSCS(chaptersList));
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
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishChapter(Chapter chapter) async {
    final DocumentReference ref = _firestore.collection(Paths.chaptersPath).document(chapter.uid);

    chapter
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(chapter.toMap(), merge: true);

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
