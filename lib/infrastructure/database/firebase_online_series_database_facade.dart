import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/paths.dart';

@lazySingleton
@RegisterAs(IOnlineSeriesDatabaseFacade)
class FirebaseOnlineSeriesDatabaseFacade
    implements IOnlineSeriesDatabaseFacade {
  final Firestore _firestore;

  FirebaseOnlineSeriesDatabaseFacade(this._firestore);

  @override
  Future<Either<DatabaseFailure, Series>> createSeries(Series series) async {
    final DocumentReference ref =
        _firestore.collection(Paths.seriesPath).document(series.uid);

    series
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(series.toMap(), merge: true);

    return getSeriesById(series.uid);
  }

  @override
  Future<Either<DatabaseFailure, Series>> getSeriesById(String seriesUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.seriesPath).document(seriesUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Series series = Series.fromFirestore(snapshot);
      return right(series);
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }
}
