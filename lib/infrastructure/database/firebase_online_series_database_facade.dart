import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IOnlineSeriesDatabaseFacade)
class FirebaseOnlineSeriesDatabaseFacade implements IOnlineSeriesDatabaseFacade {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  FirebaseOnlineSeriesDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
    this._onlineUserDatabaseFacade,
  );

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadNewSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
    bool loadAuthors = false,
  }) async {
    final CollectionReference seriesCollection = _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument = await seriesCollection.document(lastSeries.uid).get();

      querySnapshot = await seriesCollection
          .startAfterDocument(lastDocument)
          .where('createdAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty ? [filters['genre']] : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await seriesCollection
          .where('createdAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty ? [filters['genre']] : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Series> seriesList = <Series>[];
    if (querySnapshot.documents.isNotEmpty) {
      if (!loadAuthors) {
        for (final DocumentSnapshot doc in querySnapshot.documents) {
          seriesList.add(Series.fromFirestore(doc));
        }
      } else {
        final List<String> userUid = <String>[];
        for (final DocumentSnapshot doc in querySnapshot.documents) {
          seriesList.add(Series.fromFirestore(doc));
          userUid.add(doc.data['authorUid'] as String);
        }

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

          for (final Series series in seriesList) {
            series.author = usersMap[series.authorUid];
          }
        }
      }
    }
    return right(DatabaseSuccess.seriesListLoadedSCS(seriesList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesAsMapByUidList(List<String> seriesUids) async {
    final List<String> filterSeriesUids = seriesUids.toSet().toList();

    final CollectionReference usersCollection = _firestore.collection(Paths.seriesPath);

    final QuerySnapshot querySnapshot = await usersCollection.where('uid', whereIn: filterSeriesUids).getDocuments();

    final List<Series> seriesList = <Series>[];
    for (final DocumentSnapshot doc in querySnapshot.documents) {
      seriesList.add(Series.fromFirestore(doc));
    }

    final Map<String, Series> seriesMap = {for (final Series series in seriesList) series.uid: series};

    return right(DatabaseSuccess.seriesAsMapLoadedSCS(seriesMap));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesBookmarksCount(String seriesUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.seriesBookmarksPath).document(seriesUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.seriesStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> bookmarks = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.seriesStatsCountLoadedSCS(bookmarks.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesByUid(String seriesUid) async {
    final DocumentReference ref = _firestore.collection(Paths.seriesPath).document(seriesUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Series series = Series.fromFirestore(snapshot);
      return right(DatabaseSuccess.seriesLoadedSCS(series));
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesByUserId(String uid, {Series lastSeries}) async {
    final CollectionReference seriesCollection = _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument = await seriesCollection.document(lastSeries.uid).get();

      querySnapshot = await seriesCollection
          .startAfterDocument(lastDocument)
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await seriesCollection
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Series> seriesList = <Series>[];
    for (final DocumentSnapshot doc in querySnapshot.documents) {
      seriesList.add(Series.fromFirestore(doc));
    }
    return right(DatabaseSuccess.seriesListLoadedSCS(seriesList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesLikesCount(String seriesUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.seriesLikesPath).document(seriesUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.seriesStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> likes = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.seriesStatsCountLoadedSCS(likes.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesViewsCount(String seriesUid) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.seriesViewsPath).document(seriesUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.seriesStatsCountLoadedSCS(0));
    }
    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> views = data.keys.where((key) => data[key] == true).toList();
    return right(DatabaseSuccess.seriesStatsCountLoadedSCS(views.length));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadTopSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
    bool loadAuthors = false,
  }) async {
    final CollectionReference seriesCollection = _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument = await seriesCollection.document(lastSeries.uid).get();

      querySnapshot = await seriesCollection
          .startAfterDocument(lastDocument)
          .where('updatedAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty ? [filters['genre']] : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('updatedAt', descending: true)
          .orderBy('likesCount', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await seriesCollection
          .where('updatedAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty ? [filters['genre']] : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('updatedAt', descending: true)
          .orderBy('likesCount', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Series> seriesList = <Series>[];
    if (querySnapshot.documents.isNotEmpty) {
      if (!loadAuthors) {
        for (final DocumentSnapshot doc in querySnapshot.documents) {
          seriesList.add(Series.fromFirestore(doc));
        }
      } else {
        final List<String> userUid = <String>[];
        for (final DocumentSnapshot doc in querySnapshot.documents) {
          seriesList.add(Series.fromFirestore(doc));
          userUid.add(doc.data['authorUid'] as String);
        }

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

          for (final Series series in seriesList) {
            series.author = usersMap[series.authorUid];
          }
        }
      }
    }
    seriesList.sort((b, a) => a.likesCount.compareTo(b.likesCount));
    return right(DatabaseSuccess.seriesListLoadedSCS(seriesList));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserBookmarkStatus({String userUid, String seriesUid}) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.seriesBookmarksPath).document(seriesUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.seriesStatsStatusLoadedSCS(status: false));
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isBookmarked = data[userUid] as bool;

    if (isBookmarked != null) {
      return right(DatabaseSuccess.seriesStatsStatusLoadedSCS(status: isBookmarked));
    }
    return right(const DatabaseSuccess.seriesStatsStatusLoadedSCS(status: false));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserLikeStatus({String userUid, String seriesUid}) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.seriesLikesPath).document(seriesUid).get();

    if (!documentSnapshot.exists) {
      return right(const DatabaseSuccess.seriesStatsStatusLoadedSCS(status: false));
    }

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isLiked = data[userUid] as bool;

    if (isLiked != null) {
      return right(DatabaseSuccess.seriesStatsStatusLoadedSCS(status: isLiked));
    }
    return right(const DatabaseSuccess.seriesStatsStatusLoadedSCS(status: false));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishSeries(Series series) async {
    final DocumentReference ref = _firestore.collection(Paths.seriesPath).document(series.uid);

    series
      ..likesCount = 0
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(series.toMap(), merge: true);

    return right(const DatabaseSuccess.seriesPublishedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesBookmarks({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentReference seriesBookmarksReference =
        _firestore.collection(Paths.seriesBookmarksPath).document(seriesUid);

    final DocumentSnapshot documentSnapshot = await seriesBookmarksReference.get();

    bool isBookmarked;
    if (!documentSnapshot.exists || documentSnapshot.data[userUid] as bool == null) {
      isBookmarked = false;
    } else {
      isBookmarked = documentSnapshot.data[userUid] as bool;
    }

    await seriesBookmarksReference.setData({userUid: !isBookmarked}, merge: true);
    return right(const DatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesLikesAndLikesCount({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentReference seriesReference = _firestore.collection(Paths.seriesPath).document(seriesUid);
    final DocumentReference seriesLikesReference = _firestore.collection(Paths.seriesLikesPath).document(seriesUid);

    final DocumentSnapshot documentSnapshot = await seriesLikesReference.get();

    bool isLiked;
    if (!documentSnapshot.exists || documentSnapshot.data[userUid] as bool == null) {
      isLiked = false;
    } else {
      isLiked = documentSnapshot.data[userUid] as bool;
    }

    Future.wait([
      seriesReference.setData({
        'likesCount': FieldValue.increment(!isLiked ? 1 : -1),
        'updatedAt': DateTime.now().millisecondsSinceEpoch,
      }, merge: true),
      seriesLikesReference.setData({userUid: !isLiked}, merge: true),
    ]);
    return right(const DatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesViews({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentReference seriesViewsReference = _firestore.collection(Paths.seriesViewsPath).document(seriesUid);

    final DocumentSnapshot documentSnapshot = await seriesViewsReference.get();

    if (!documentSnapshot.exists || documentSnapshot.data[userUid] == null) {
      await seriesViewsReference.setData({userUid: true}, merge: true);
    }
    return right(const DatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> uploadCover(File cover) async {
    final String fileName = p.basename(cover.path);
    final StorageReference ref =
        _firebaseStorage.ref().child('${Paths.seriesCoversPaths}/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final StorageUploadTask uploadTask = ref.putFile(cover);
    final StorageTaskSnapshot result = await uploadTask.onComplete;
    final String url = await result.ref.getDownloadURL() as String;
    return right(DatabaseSuccess.seriesCoverUploadedSCS(url));
  }
}
