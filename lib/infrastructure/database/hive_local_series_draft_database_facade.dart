import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

/// @nodoc
@LazySingleton(as: ILocalSeriesDraftDatabaseFacade)
class HiveLocalSeriesDatabaseFacade implements ILocalSeriesDraftDatabaseFacade {
  /// @nodoc
  HiveLocalSeriesDatabaseFacade(this._seriesDraftsBox);

  final Box<SeriesDraft> _seriesDraftsBox;

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> deleteSeriesDraft(
    String uid,
  ) async {
    await _seriesDraftsBox.delete(uid);

    final seriesDraft = _seriesDraftsBox.get(uid);
    if (seriesDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(const SeriesDraftDatabaseSuccess.localSeriesDraftDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> fetchSeriesDraft(
    String uid,
  ) async {
    final seriesDraft = _seriesDraftsBox.get(uid);

    if (seriesDraft != null) {
      return right(SeriesDraftDatabaseSuccess.seriesDraftFetchedSCS(
        seriesDraft,
      ));
    }
    return left(const DatabaseFailure.failedToFetchLocalData());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> saveSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final seriesDraftTest = _seriesDraftsBox.get(seriesDraft.uid);
    if (seriesDraftTest != null) {
      return right(
          SeriesDraftDatabaseSuccess.localSeriesDraftSavedSCS(seriesDraftTest));
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> updateSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    final outdatedSeriesDraft = _seriesDraftsBox.get(seriesDraft.uid);

    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final currentSeriesDraft = _seriesDraftsBox.get(seriesDraft.uid);
    if (currentSeriesDraft != outdatedSeriesDraft) {
      return right(
        const SeriesDraftDatabaseSuccess.localSeriesDraftUpdatedSCS(),
      );
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
