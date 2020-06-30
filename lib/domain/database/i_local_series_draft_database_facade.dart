import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

abstract class ILocalSeriesDraftDatabaseFacade {
  // SECTION Series Draft
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteSeriesDraft(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchSeriesDraft(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveSeriesDraft(SeriesDraft seriesDraft);
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesDraft(SeriesDraft seriesDraft);
}
