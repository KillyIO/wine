import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:string_validator/string_validator.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_series_database_facade.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/models/count.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/paths/series.dart';
import 'package:wine/utils/extensions/list.dart';
import 'package:wine/utils/paths/storages.dart';

/// @nodoc
@LazySingleton(as: IOnlineSeriesDatabaseFacade)
class FirebaseSeriesDatabaseFacade implements IOnlineSeriesDatabaseFacade {
  /// @nodoc
  FirebaseSeriesDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
  );

  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> deleteSeries(
    String seriesUID,
  ) async {
    final ref = _firestore.collection(seriesPath).doc(seriesUID);

    await ref.delete();
    return right(const SeriesDatabaseSuccess.seriesDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> deleteSeriesCover(
      String coverURL) async {
    final storageReference = _firebaseStorage.refFromURL(coverURL);

    await storageReference.delete();
    return right(const SeriesDatabaseSuccess.seriesCoverDeletedSCS());
  }

  Future<List<String>> _loadBookmarkedSeriesUIDList(
    String userUID, {
    Series lastSeries,
  }) async {
    final seriesBookmarksCollection =
        _firestore.collection(seriesBookmarksPath);

    Query query;
    if (lastSeries != null) {
      final lastDocument =
          await seriesBookmarksCollection.doc(lastSeries.uid).get();

      query = seriesBookmarksCollection
          .startAfterDocument(lastDocument)
          .where(userUID, isEqualTo: true);
    } else {
      query = seriesBookmarksCollection.where(userUID, isEqualTo: true);
    }
    query = query.limit(20);

    final querySnapshot = await query.get();

    final uidsList = <String>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      uidsList.add(doc.id);
    }

    return uidsList.toSet().toList();
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadBookmarkedSeriesListByUserUID(
    String userUID, {
    Series lastSeries,
  }) async {
    final uidsList = await _loadBookmarkedSeriesUIDList(userUID);

    if (uidsList.isNotEmpty) {
      final seriesCollection = _firestore.collection(seriesPath);

      final querySnapshot =
          await seriesCollection.where('uid', whereIn: uidsList).get();

      final seriesList = <Series>[];
      if (querySnapshot.docs.isNotEmpty) {
        for (final DocumentSnapshot doc in querySnapshot.docs) {
          seriesList.add(Series.fromFirestore(doc));
        }
      }

      return right(SeriesDatabaseSuccess.seriesListLoadedSCS(seriesList));
    }

    return right(const SeriesDatabaseSuccess.seriesListLoadedSCS(<Series>[]));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadNewSeriesList(
    Map<String, dynamic> filters, {
    Series lastSeries,
  }) async {
    final seriesCollection = _firestore.collection(seriesPath);

    Query query;
    if (lastSeries != null) {
      final lastDocument = await seriesCollection.doc(lastSeries.uid).get();

      query = seriesCollection
          .startAfterDocument(lastDocument)
          .where('createdAt', isGreaterThanOrEqualTo: filters['time']);
    } else {
      query = seriesCollection.where('createdAt',
          isGreaterThanOrEqualTo: filters['time']);
    }

    if ((filters['genre'] as String).isNotEmpty) {
      query = query.where('genre', isEqualTo: filters['genre']);
    }

    query = query
        .where('language', isEqualTo: filters['language'])
        .orderBy('createdAt', descending: true)
        .limit(20);

    final querySnapshot = await query.get();

    final seriesList = <Series>[];
    if (querySnapshot.docs.isNotEmpty) {
      for (final DocumentSnapshot doc in querySnapshot.docs) {
        seriesList.add(Series.fromFirestore(doc));
      }
    }

    return right(SeriesDatabaseSuccess.seriesListLoadedSCS(seriesList));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesAsMapByUIDList(List<String> seriesUIDs) async {
    final filterSeriesUIDs = seriesUIDs.toSet().toList();

    final usersCollection = _firestore.collection(seriesPath);

    final querySnapshot =
        await usersCollection.where('uid', whereIn: filterSeriesUIDs).get();

    final seriesList = <Series>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      seriesList.add(Series.fromFirestore(doc));
    }

    final seriesMap = <String, Series>{
      for (final Series series in seriesList) series.uid: series
    };

    return right(SeriesDatabaseSuccess.seriesAsMapLoadedSCS(seriesMap));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesBookmarksCount(String seriesUID) async {
    final documentSnapshot = await _firestore
        .collection(seriesBookmarksCountsPath)
        .doc(seriesUID)
        .get();

    if (!documentSnapshot.exists) {
      return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }
    final count = Count.fromFirestore(documentSnapshot);
    return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(count));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesByUID(
    String seriesUID,
  ) async {
    final ref = _firestore.collection(seriesPath).doc(seriesUID);

    final snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final series = Series.fromFirestore(snapshot);
      return right(SeriesDatabaseSuccess.seriesLoadedSCS(series));
    }
    return left(const DatabaseFailure.failedToLoadOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesListByUserUID(
    String userUID, {
    Series lastSeries,
  }) async {
    final seriesCollection = _firestore.collection(seriesPath);

    Query query;
    if (lastSeries != null) {
      final lastDocument = await seriesCollection.doc(lastSeries.uid).get();

      query = seriesCollection
          .startAfterDocument(lastDocument)
          .where('authorUID', isEqualTo: userUID);
    } else {
      query = seriesCollection.where('authorUID', isEqualTo: userUID);
    }
    query = query.orderBy('createdAt', descending: true).limit(20);

    final querySnapshot = await query.get();

    final seriesList = <Series>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      seriesList.add(Series.fromFirestore(doc));
    }
    return right(SeriesDatabaseSuccess.seriesListLoadedSCS(seriesList));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesLikesCount(
    String seriesUID,
  ) async {
    final documentSnapshot =
        await _firestore.collection(seriesLikesCountsPath).doc(seriesUID).get();

    if (!documentSnapshot.exists) {
      return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }

    final count = Count.fromFirestore(documentSnapshot);
    return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(count));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesViewsCount(
    String seriesUID,
  ) async {
    final documentSnapshot =
        await _firestore.collection(seriesViewsCountsPath).doc(seriesUID).get();

    if (!documentSnapshot.exists) {
      return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(
        Count(count: 0),
      ));
    }
    final count = Count.fromFirestore(documentSnapshot);
    return right(SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(count));
  }

  Future<List<String>> _loadTopSeriesUIDList(
    Map<String, dynamic> filters, {
    Series lastSeries,
  }) async {
    final seriesLikesCountsCollection =
        _firestore.collection(seriesLikesCountsPath);

    Query query;
    if (lastSeries != null) {
      final lastDocument =
          await seriesLikesCountsCollection.doc(lastSeries.uid).get();

      query = seriesLikesCountsCollection
          .startAfterDocument(lastDocument)
          .where('updatedAt', isGreaterThanOrEqualTo: filters['time']);
    } else {
      query = seriesLikesCountsCollection.where(
        'updatedAt',
        isGreaterThanOrEqualTo: filters['time'],
      );
    }

    if ((filters['genre'] as String).isNotEmpty) {
      query = query.where('genre', isEqualTo: filters['genre']);
    }

    query = query
        .where('language', isEqualTo: filters['language'])
        .orderBy('updatedAt', descending: true)
        .orderBy('count', descending: true)
        .limit(20);

    final querySnapshot = await query.get();

    final uidsList = <String>[];
    for (final DocumentSnapshot doc in querySnapshot.docs) {
      uidsList.add(doc.id);
    }

    return uidsList.toSet().toList();
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadTopSeriesList(
    Map<String, dynamic> filters, {
    Series lastSeries,
  }) async {
    final uidsList =
        await _loadTopSeriesUIDList(filters, lastSeries: lastSeries);

    if (uidsList.isNotEmpty) {
      final seriesCollection = _firestore.collection(seriesPath);

      final uidsChunked = uidsList.chunk(10);

      final seriesList = <Series>[];

      for (final chunk in uidsChunked) {
        final querySnapshot =
            await seriesCollection.where('uid', whereIn: chunk).get();

        if (querySnapshot.docs.isNotEmpty) {
          for (final DocumentSnapshot doc in querySnapshot.docs) {
            seriesList.add(Series.fromFirestore(doc));
          }
        }
      }

      return right(SeriesDatabaseSuccess.seriesListLoadedSCS(seriesList));
    }

    return right(const SeriesDatabaseSuccess.seriesListLoadedSCS(<Series>[]));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadUserBookmarkStatus({
    String userUID,
    String seriesUID,
  }) async {
    final documentSnapshot =
        await _firestore.collection(seriesBookmarksPath).doc(seriesUID).get();

    if (!documentSnapshot.exists) {
      return right(const SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
        status: false,
      ));
    }

    final data = documentSnapshot.data();
    final isBookmarked = data[userUID] as bool;

    if (isBookmarked != null) {
      return right(SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
        status: isBookmarked,
      ));
    }
    return right(const SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
      status: false,
    ));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadUserLikeStatus({
    String userUID,
    String seriesUID,
  }) async {
    final documentSnapshot =
        await _firestore.collection(seriesLikesPath).doc(seriesUID).get();

    if (!documentSnapshot.exists) {
      return right(const SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
        status: false,
      ));
    }

    final data = documentSnapshot.data();
    final isLiked = data[userUID] as bool;

    if (isLiked != null) {
      return right(SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
        status: isLiked,
      ));
    }
    return right(const SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS(
      status: false,
    ));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> publishSeries(
    Series series,
  ) async {
    if (!isURL(series.coverURL)) {
      await uploadCover(File(series.coverURL))
        ..fold(
          (_) {},
          (success) {
            if (success is SeriesCoverUploadedSCS) {
              series = series.copyWith(coverURL: success.coverURL);
            }
          },
        );
    }

    final seriesRef = _firestore.collection(seriesPath).doc(series.uid);

    final options = SetOptions(merge: true);
    await seriesRef.set(series.toMap(), options);

    return right(SeriesDatabaseSuccess.seriesPublishedSCS(series));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesBookmarksAndBookmarksCount({
    String userUID,
    String seriesUID,
  }) async {
    final seriesBookmarksCountsReference =
        _firestore.collection(seriesBookmarksCountsPath).doc(seriesUID);
    final seriesBookmarksReference =
        _firestore.collection(seriesBookmarksPath).doc(seriesUID);

    final documentSnapshot = await seriesBookmarksReference.get();

    bool isBookmarked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data()[userUID] as bool == null) {
      isBookmarked = false;
    } else {
      isBookmarked = documentSnapshot.data()[userUID] as bool;
    }

    await Future.wait([
      !documentSnapshot.exists
          ? seriesBookmarksCountsReference.set(
              {
                'count': FieldValue.increment(!isBookmarked ? 1 : -1),
                'createdAt': DateTime.now(),
                'updatedAt': DateTime.now(),
              },
              SetOptions(merge: true),
            )
          : seriesBookmarksCountsReference.set(
              {
                'count': FieldValue.increment(!isBookmarked ? 1 : -1),
                'updatedAt': DateTime.now(),
              },
              SetOptions(mergeFields: <FieldPath>[
                FieldPath.fromString('count'),
                FieldPath.fromString('updatedAt')
              ]),
            ),
      seriesBookmarksReference.set(
        {userUID: !isBookmarked},
        SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
      )
    ]);

    return right(const SeriesDatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesLikesAndLikesCount({
    String userUID,
    String seriesUID,
    bool isInit = false,
    Series series,
  }) async {
    final seriesLikesCountsReference =
        _firestore.collection(seriesLikesCountsPath).doc(seriesUID);
    final seriesLikesReference =
        _firestore.collection(seriesLikesPath).doc(seriesUID);

    final documentSnapshot = await seriesLikesReference.get();

    bool isLiked;
    if (!documentSnapshot.exists ||
        documentSnapshot.data()[userUID] as bool == null) {
      isLiked = false;
    } else {
      isLiked = documentSnapshot.data()[userUID] as bool;
    }

    await Future.wait([
      isInit
          ? seriesLikesCountsReference.set(
              {
                'count': FieldValue.increment(!isLiked ? 1 : -1),
                'createdAt': DateTime.now(),
                'updatedAt': DateTime.now(),
                'genre': series.genre,
                'genreOptional': series.genreOptional,
                'language': series.language,
              },
              SetOptions(merge: true),
            )
          : seriesLikesCountsReference.set(
              {
                'count': FieldValue.increment(!isLiked ? 1 : -1),
                'updatedAt': DateTime.now(),
              },
              SetOptions(mergeFields: <FieldPath>[
                FieldPath.fromString('count'),
                FieldPath.fromString('updatedAt')
              ]),
            ),
      seriesLikesReference.set(
        {userUID: !isLiked},
        SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
      ),
    ]);
    return right(const SeriesDatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesViewsAndViewsCount({
    String userUID,
    String seriesUID,
    bool isInit = false,
  }) async {
    final seriesViewsCountsReference =
        _firestore.collection(seriesViewsCountsPath).doc(seriesUID);
    final seriesViewsReference =
        _firestore.collection(seriesViewsPath).doc(seriesUID);

    final documentSnapshot = await seriesViewsReference.get();

    if (!documentSnapshot.exists || documentSnapshot.data()[userUID] == null) {
      await Future.wait([
        isInit
            ? seriesViewsCountsReference.set(
                {
                  'count': FieldValue.increment(1),
                  'createdAt': DateTime.now(),
                  'updatedAt': DateTime.now(),
                },
                SetOptions(merge: true),
              )
            : seriesViewsCountsReference.set(
                {
                  'count': FieldValue.increment(1),
                  'updatedAt': DateTime.now(),
                },
                SetOptions(mergeFields: <FieldPath>[
                  FieldPath.fromString('count'),
                  FieldPath.fromString('updatedAt')
                ]),
              ),
        seriesViewsReference.set(
          {userUID: true},
          SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('userUID')]),
        )
      ]);
    }
    return right(const SeriesDatabaseSuccess.seriesStatsCountUpdatedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> uploadCover(
    File cover,
  ) async {
    final fileName = p.basename(cover.path);
    final ref = _firebaseStorage.ref().child(
        '$seriesCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final uploadTask = await ref.putFile(cover);
    final state = uploadTask.state;
    if (state == TaskState.success) {
      final url = await ref.getDownloadURL();
      return right(SeriesDatabaseSuccess.seriesCoverUploadedSCS(url));
    }
    return left(const DatabaseFailure.failedToCreateOnlineData());
  }
}
