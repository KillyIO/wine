import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/paths.dart';

@lazySingleton
@RegisterAs(IOnlineSeriesDatabaseFacade)
class FirebaseOnlineSeriesDatabaseFacade
    implements IOnlineSeriesDatabaseFacade {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  FirebaseOnlineSeriesDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
    this._onlineUserDatabaseFacade,
  );

  @override
  Future<Either<DatabaseFailure, Series>> publishSeries(Series series) async {
    final DocumentReference ref =
        _firestore.collection(Paths.seriesPath).document(series.uid);

    series
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(series.toMap(), merge: true);

    return getSeriesByUid(series.uid);
  }

  @override
  Future<Either<DatabaseFailure, Series>> getSeriesByUid(
      String seriesUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.seriesPath).document(seriesUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Series series = Series.fromFirestore(snapshot);
      return right(series);
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, List<Series>>> getSeriesByUserId(
    String uid, {
    Series lastSeries,
  }) async {
    final CollectionReference seriesCollection =
        _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument =
          await seriesCollection.document(lastSeries.uid).get();

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
    return right(seriesList);
  }

  @override
  Future<Either<DatabaseFailure, List<Series>>> getTopSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
  }) async {
    final CollectionReference seriesCollection =
        _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument =
          await seriesCollection.document(lastSeries.uid).get();

      querySnapshot = await seriesCollection
          .startAfterDocument(lastDocument)
          .where('updatedAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty
                  ? [filters['genre']]
                  : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('updatedAt', descending: true)
          .orderBy('likesCount', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await seriesCollection
          .where('updatedAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty
                  ? [filters['genre']]
                  : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('updatedAt', descending: true)
          .orderBy('likesCount', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Series> seriesList = <Series>[];
    if (querySnapshot.documents.isNotEmpty) {
      final List<String> userUid = <String>[];
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        seriesList.add(Series.fromFirestore(doc));
        userUid.add(doc.data['authorUid'] as String);
      }

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

        for (final Series series in seriesList) {
          series.author = usersMap[series.authorUid];
        }
      }
    }
    return right(seriesList);
  }

  @override
  Future<Either<DatabaseFailure, List<Series>>> getNewSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
  }) async {
    final CollectionReference seriesCollection =
        _firestore.collection(Paths.seriesPath);

    QuerySnapshot querySnapshot;
    if (lastSeries != null) {
      final DocumentSnapshot lastDocument =
          await seriesCollection.document(lastSeries.uid).get();

      querySnapshot = await seriesCollection
          .startAfterDocument(lastDocument)
          .where('createdAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty
                  ? [filters['genre']]
                  : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await seriesCollection
          .where('createdAt', isGreaterThanOrEqualTo: filters['time'])
          .where('genre',
              whereIn: (filters['genre'] as String).isNotEmpty
                  ? [filters['genre']]
                  : Methods.getGenreKeys())
          .where('language', isEqualTo: filters['language'])
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Series> seriesList = <Series>[];
    if (querySnapshot.documents.isNotEmpty) {
      final List<String> userUid = <String>[];
      for (final DocumentSnapshot doc in querySnapshot.documents) {
        seriesList.add(Series.fromFirestore(doc));
        userUid.add(doc.data['authorUid'] as String);
      }

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

        for (final Series series in seriesList) {
          series.author = usersMap[series.authorUid];
        }
      }
    }
    return right(seriesList);
  }

  @override
  Future<Either<DatabaseFailure, Map<String, Series>>> getSeriesAsMapByUidList(
    List<String> seriesUids,
  ) async {
    final List<String> filterSeriesUids = seriesUids.toSet().toList();

    final CollectionReference usersCollection =
        _firestore.collection(Paths.seriesPath);

    final QuerySnapshot querySnapshot = await usersCollection
        .where('uid', whereIn: filterSeriesUids)
        .getDocuments();

    final List<Series> seriesList = <Series>[];
    for (final DocumentSnapshot doc in querySnapshot.documents) {
      seriesList.add(Series.fromFirestore(doc));
    }

    final Map<String, Series> seriesMap = {
      for (final Series series in seriesList) series.uid: series
    };

    return right(seriesMap);
  }

  @override
  Future<Either<DatabaseFailure, int>> getSeriesLikesCount(
    String seriesUid,
  ) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.seriesLikesPath)
        .document(seriesUid)
        .get();

    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> likes =
        data.keys.where((key) => data[key] == true).toList();
    return right(likes.length);
  }

  @override
  Future<Either<DatabaseFailure, bool>> getUserLikeStatus({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.seriesLikesPath)
        .document(seriesUid)
        .get();

    final Map<String, dynamic> data = documentSnapshot.data;
    final bool isLiked = data[userUid] as bool;

    if (isLiked != null) {
      return right(isLiked);
    }
    return right(false);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateSeriesLikesAndLikesCount({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentReference seriesReference =
        _firestore.collection(Paths.seriesPath).document(seriesUid);
    final DocumentReference seriesLikesReference =
        _firestore.collection(Paths.seriesLikesPath).document(seriesUid);

    final DocumentSnapshot documentSnapshot = await seriesLikesReference.get();

    final Map<String, dynamic> data = documentSnapshot?.data;
    final bool isLiked = data[userUid] as bool ?? false;

    Future.wait([
      seriesReference.setData({
        'likesCount': FieldValue.increment(!isLiked ? 1 : -1),
        'updatedAt': DateTime.now().millisecondsSinceEpoch,
      }, merge: true),
      seriesLikesReference.setData({
        userUid: !isLiked,
      }, merge: true),
    ]);
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, int>> getSeriesViewsCount(
    String seriesUid,
  ) async {
    final DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.seriesViewsPath)
        .document(seriesUid)
        .get();

    final Map<String, dynamic> data = documentSnapshot.data;
    final List<String> views =
        data.keys.where((key) => data[key] == true).toList();
    return right(views.length);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateSeriesViewsAndViewsCount({
    String userUid,
    String seriesUid,
  }) async {
    final DocumentReference seriesViewsReference =
        _firestore.collection(Paths.seriesViewsPath).document(seriesUid);

    final DocumentSnapshot documentSnapshot = await seriesViewsReference.get();

    if (documentSnapshot == null) {
      await seriesViewsReference.setData({
        userUid: true,
      }, merge: true);
    }
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, String>> uploadCover(File cover) async {
    final String fileName = p.basename(cover.path);
    final StorageReference ref = _firebaseStorage.ref().child(
        '${Paths.coversPaths}/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final StorageUploadTask uploadTask = ref.putFile(cover);
    final StorageTaskSnapshot result = await uploadTask.onComplete;
    final String url = await result.ref.getDownloadURL() as String;
    return right(url);
  }
}
