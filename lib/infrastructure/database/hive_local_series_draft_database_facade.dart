import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

@lazySingleton
@RegisterAs(ILocalSeriesDraftDatabaseFacade)
class HiveLocalSeriesDatabaseFacade implements ILocalSeriesDraftDatabaseFacade {
  final Box<SeriesDraft> _seriesDraftsBox;

  HiveLocalSeriesDatabaseFacade(this._seriesDraftsBox);

  @override
  Future<Either<DatabaseFailure, SeriesDraft>> saveSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final SeriesDraft seriesDraftTest = _seriesDraftsBox.get(seriesDraft.uid);
    if (seriesDraftTest != null) {
      return right(seriesDraftTest);
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, SeriesDraft>> getSeriesDraft(
    String uid,
  ) async {
    final SeriesDraft seriesDraft = _seriesDraftsBox.get(uid);

    if (seriesDraft != null) {
      return right(seriesDraft);
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateSeriesDraft(
    SeriesDraft seriesDraft,
  ) async {
    final SeriesDraft outdatedSeriesDraft =
        _seriesDraftsBox.get(seriesDraft.uid);

    await _seriesDraftsBox.put(seriesDraft.uid, seriesDraft);

    final SeriesDraft currentSeriesDraft =
        _seriesDraftsBox.get(seriesDraft.uid);
    if (currentSeriesDraft != outdatedSeriesDraft) {
      return right(unit);
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteSeriesDraft(String uid) async {
    await _seriesDraftsBox.delete(uid);

    final SeriesDraft seriesDraft = _seriesDraftsBox.get(uid);
    if (seriesDraft != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(unit);
  }
}
