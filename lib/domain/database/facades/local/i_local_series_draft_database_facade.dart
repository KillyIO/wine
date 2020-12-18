import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

/// @nodoc
abstract class ILocalSeriesDraftDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> deleteSeriesDraft(
    String uid,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> fetchSeriesDraft(
    String uid,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> saveSeriesDraft(
    SeriesDraft seriesDraft,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> updateSeriesDraft(
    SeriesDraft seriesDraft,
  );
}
