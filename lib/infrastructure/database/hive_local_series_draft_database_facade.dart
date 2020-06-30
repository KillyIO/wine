import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

@LazySingleton(as: ILocalSeriesDraftDatabaseFacade)
class HiveLocalSeriesDatabaseFacade implements ILocalSeriesDraftDatabaseFacade {
  final Box<SeriesDraft> _seriesDraftsBox;

  HiveLocalSeriesDatabaseFacade(this._seriesDraftsBox);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteSeriesDraft(String uid) async {
    await _seriesDraftsBox.delete(uid);

    final SeriesDraft seriesDraft = _seriesDraftsBox.get(uid);
    if (seriesDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(const DatabaseSuccess.seriesDraftDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchSeriesDraft(
    String uid,
  ) async {
    final SeriesDraft seriesDraft = _seriesDraftsBox.get(uid);

    if (seriesDraft != null) {
      return right(DatabaseSuccess.seriesDraftFetchedSCS(seriesDraft));
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final SeriesDraft seriesDraftTest = _seriesDraftsBox.get(seriesDraft.uid);
    if (seriesDraftTest != null) {
      return right(DatabaseSuccess.seriesDraftSavedSCS(seriesDraftTest));
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    final SeriesDraft outdatedSeriesDraft = _seriesDraftsBox.get(seriesDraft.uid);

    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final SeriesDraft currentSeriesDraft = _seriesDraftsBox.get(seriesDraft.uid);
    if (currentSeriesDraft != outdatedSeriesDraft) {
      return right(const DatabaseSuccess.seriesDraftUpdatedSCS());
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
