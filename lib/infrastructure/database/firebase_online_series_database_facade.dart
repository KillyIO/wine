import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
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
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  FirebaseOnlineSeriesDatabaseFacade(
    this._firestore,
    this._onlineUserDatabaseFacade,
  );

  @override
  Future<Either<DatabaseFailure, Series>> createSeries(Series series) async {
    final DocumentReference ref =
        _firestore.collection(Paths.seriesPath).document(series.uid);

    series
      ..likesCount = 1
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(series.toMap(), merge: true);

    return getSeriesById(series.uid);
  }

  @override
  Future<Either<DatabaseFailure, Series>> getSeriesById(
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

    // if (querySnapshot.documents.isNotEmpty) {
    //   final List<String> userUid = <String>[];
    //   for (final DocumentSnapshot doc in querySnapshot.documents) {
    //     seriesList.add(Series.fromFirestore(doc));
    //     userUid.add(doc.data['authorUid'] as String);
    //   }

    //   Map<String, User> usersMap = <String, User>{};

    //   if (userUid.isNotEmpty) {
    //     final Either<DatabaseFailure, Map<String, User>> failureOrSuccess =
    //         await _onlineUserDatabaseFacade.getUsersAsMapByUidList(userUid);
    //     failureOrSuccess.fold(
    //       (failure) => left(failure),
    //       (success) {
    //         usersMap = success;
    //       },
    //     );

    //     for (final Series series in seriesList) {
    //       series.author = usersMap[series.authorUid];
    //     }
    //   }
    // }
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
}
