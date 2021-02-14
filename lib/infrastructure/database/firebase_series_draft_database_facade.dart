import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/utils/paths/series.dart';

/// @nodoc
@LazySingleton(as: IOnlineSeriesDraftDatabaseFacade)
class FirebaseSeriesDraftDatabaseFacade
    implements IOnlineSeriesDraftDatabaseFacade {
  /// @nodoc
  FirebaseSeriesDraftDatabaseFacade(
    this._firestore,
    this._firebaseStorage,
  );

  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> deleteSeriesDraft(
    String seriesDraftUID,
  ) async {
    final ref = _firestore.collection(seriesDraftsPath).doc(seriesDraftUID);

    await ref.delete();

    return right(
      const SeriesDraftDatabaseSuccess.onlineSeriesDraftDeletedSCS(),
    );
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      deleteSeriesDraftCover(String coverURL) async {
    final storageReference = _firebaseStorage.refFromURL(coverURL);

    await storageReference.delete();
    return right(
      const SeriesDraftDatabaseSuccess.onlineSeriesDraftCoverDeletedSCS(),
    );
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> loadSeriesDraft(
    String seriesDraftUID,
  ) async {
    final seriesDraftsCollection = _firestore.collection(seriesDraftsPath);

    final querySnapshot =
        await seriesDraftsCollection.doc(seriesDraftUID).get();

    if (querySnapshot.exists) {
      final seriesDraft = Series.fromFirestore(querySnapshot);
      return right(SeriesDraftDatabaseSuccess.seriesDraftLoadedSCS(
        seriesDraft,
      ));
    }
    return left(const DatabaseFailure.failedToLoadOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      loadSeriesDraftsByUserUID(String userUID) async {
    final seriesDraftsCollection = _firestore.collection(seriesDraftsPath);

    final querySnapshot = await seriesDraftsCollection
        .where('authorUID', isEqualTo: userUID)
        .limit(20)
        .get();

    final seriesDrafts = <Series>[];
    for (final doc in querySnapshot.docs) {
      seriesDrafts.add(Series.fromFirestore(doc));
    }
    return right(SeriesDraftDatabaseSuccess.seriesDraftsLoadedSCS(
      seriesDrafts,
    ));
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> saveSeriesDraft(
    Series seriesDraft,
  ) async {
    final seriesDraftRef =
        _firestore.collection(seriesDraftsPath).doc(seriesDraft.uid);

    await seriesDraftRef.set(seriesDraft.toMap(), SetOptions(merge: true));

    return right(SeriesDraftDatabaseSuccess.onlineSeriesDraftSavedSCS(
      seriesDraft,
    ));
  }
}
