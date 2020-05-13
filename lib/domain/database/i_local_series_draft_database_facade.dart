import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

abstract class ILocalSeriesDraftDatabaseFacade {
  // SECTION Series Draft
  Future<Either<DatabaseFailure, SeriesDraft>> saveSeriesDraft(
    SeriesDraft seriesDraft,
  );
  Future<Either<DatabaseFailure, SeriesDraft>> getSeriesDraft(String uid);
  Future<Either<DatabaseFailure, Unit>> updateSeriesDraft(
    SeriesDraft seriesDraft,
  );
  Future<Either<DatabaseFailure, Unit>> deleteSeriesDraft(String uid);
}
