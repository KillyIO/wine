import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

@lazySingleton
@RegisterAs(IOnlineChapterDatabaseFacade)
class FirebaseOnlineChapterDatabaseFacade
    implements IOnlineChapterDatabaseFacade {
  final Firestore _firestore;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  FirebaseOnlineChapterDatabaseFacade(
    this._firestore,
    this._onlineSeriesDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  Future<Either<DatabaseFailure, Chapter>> createChapter(
    Chapter chapter,
  ) async {
    final DocumentReference ref =
        _firestore.collection(Paths.chaptersPath).document(chapter.uid);

    chapter
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(chapter.toMap(), merge: true);

    return getChapterById(chapter.uid);
  }

  @override
  Future<Either<DatabaseFailure, Chapter>> getChapterById(
      String chapterUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.chaptersPath).document(chapterUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Chapter chapter = Chapter.fromFirestore(snapshot);
      return right(chapter);
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, List<Chapter>>> getChaptersByUserId(
    String uid, {
    Chapter lastChapter,
    bool getSeries = false,
  }) async {
    final CollectionReference chaptersCollection =
        _firestore.collection(Paths.chaptersPath);

    QuerySnapshot querySnapshot;
    if (lastChapter != null) {
      final DocumentSnapshot lastDocument =
          await chaptersCollection.document(lastChapter.uid).get();

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
    if (!getSeries) {
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(doc));
      }
    } else {
      final List<String> seriesUid = <String>[];
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        chaptersList.add(Chapter.fromFirestore(doc));
        seriesUid.add(doc.data['seriesUid'] as String);
      }

      Map<String, Series> seriesMap = <String, Series>{};

      if (seriesUid.isNotEmpty) {
        final Either<DatabaseFailure, Map<String, Series>> failureOrSuccess =
            await _onlineSeriesDatabaseFacade
                .getSeriesAsMapByUidList(seriesUid);
        failureOrSuccess.fold(
          (failure) => left(failure),
          (success) {
            seriesMap = success;
          },
        );

        for (final Chapter chapter in chaptersList) {
          chapter.series = seriesMap[chapter.seriesUid];
        }
      }
    }
    return right(chaptersList);
  }

  @override
  Future<Either<DatabaseFailure, dynamic>> getChaptersBySeriesUidAndIndex({
    String seriesUid,
    int index,
    bool getAuthors = false,
    bool getSeries = false,
  }) async {
    final CollectionReference chaptersCollection =
        _firestore.collection(Paths.chaptersPath);

    final QuerySnapshot querySnapshot = await chaptersCollection
        .where('seriesUid', isEqualTo: seriesUid)
        .where('index', isEqualTo: index)
        .getDocuments();

    if (index == 1) {
      final Chapter chapterOne =
          Chapter.fromFirestore(querySnapshot.documents[0]);

      return right(chapterOne);
    } else {
      final List<Chapter> chaptersList = <Chapter>[];
      if (!getAuthors) {
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
            final Either<DatabaseFailure, Map<String, User>> failureOrSuccess =
                await _onlineUserDatabaseFacade.getUsersAsMapByUidList(userUid);
            failureOrSuccess.fold(
              (failure) => left(failure),
              (success) {
                usersMap = success;
              },
            );

            for (final Chapter chapter in chaptersList) {
              chapter.author = usersMap[chapter.authorUid];
            }
          }
        }
      }
      return right(chaptersList);
    }
  }

  @override
  Future<Either<DatabaseFailure, int>> getChapterViewsCount(
      String chapterUid) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.chaptersViewsPath)
        .document(chapterUid)
        .get();

    if (!documentSnapshot.exists) {
      return right(0);
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> views =
        data.keys.where((key) => data[key] == true).toList();
    return right(views.length);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateChapterViews({
    String userUid,
    String chapterUid,
  }) async {
    final DocumentReference chaptersViewsReference =
        _firestore.collection(Paths.chaptersViewsPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot =
        await chaptersViewsReference.get();

    if (!documentSnapshot.exists || documentSnapshot.data[userUid] == null) {
      await chaptersViewsReference.setData({
        userUid: true,
      }, merge: true);
    }
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, int>> getChapterLikesCount(
    String chapterUid,
  ) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.chaptersLikesPath)
        .document(chapterUid)
        .get();

    if (!documentSnapshot.exists) {
      return right(0);
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> likes =
        data.keys.where((key) => data[key] == true).toList();
    return right(likes.length);
  }

  @override
  Future<Either<DatabaseFailure, bool>> getUserLikeStatus({
    String userUid,
    String chapterUid,
  }) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.chaptersLikesPath)
        .document(chapterUid)
        .get();

    if (!documentSnapshot.exists) {
      return right(false);
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isLiked = data[userUid] as bool;

    if (isLiked != null) {
      return right(isLiked);
    }
    return right(false);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateChapterLikes({
    String userUid,
    String chapterUid,
  }) async {
    final DocumentReference chaptersLikesReference =
        _firestore.collection(Paths.chaptersLikesPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot =
        await chaptersLikesReference.get();

    bool isLiked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data[userUid] as bool == null) {
      isLiked = false;
    } else {
      isLiked = documentSnapshot.data[userUid] as bool;
    }

    await chaptersLikesReference.setData({
      userUid: !isLiked,
    }, merge: true);
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, int>> getChapterBookmarksCount(
    String chapterUid,
  ) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.chaptersBookmarksPath)
        .document(chapterUid)
        .get();

    if (!documentSnapshot.exists) {
      return right(0);
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> bookmarks =
        data.keys.where((key) => data[key] == true).toList();
    return right(bookmarks.length);
  }

  @override
  Future<Either<DatabaseFailure, bool>> getUserBookmarkStatus({
    String userUid,
    String chapterUid,
  }) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.chaptersBookmarksPath)
        .document(chapterUid)
        .get();

    if (!documentSnapshot.exists) {
      return right(false);
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isBookmarked = data[userUid] as bool;

    if (isBookmarked != null) {
      return right(isBookmarked);
    }
    return right(false);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateChapterBookmarks({
    String userUid,
    String chapterUid,
  }) async {
    final DocumentReference chaptersBookmarksReference =
        _firestore.collection(Paths.chaptersBookmarksPath).document(chapterUid);

    final DocumentSnapshot documentSnapshot =
        await chaptersBookmarksReference.get();

    bool isBookmarked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data[userUid] as bool == null) {
      isBookmarked = false;
    } else {
      isBookmarked = documentSnapshot.data[userUid] as bool;
    }

    await chaptersBookmarksReference.setData({
      userUid: !isBookmarked,
    }, merge: true);
    return right(unit);
  }
}
