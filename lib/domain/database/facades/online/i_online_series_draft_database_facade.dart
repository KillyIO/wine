import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/models/series.dart';

/// @nodoc
abstract class IOnlineSeriesDraftDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> deleteSeriesDraft(
    String seriesDraftUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      deleteSeriesDraftCover(String coverURL);

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> loadSeriesDraft(
    String seriesDraftUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      loadSeriesDraftsByUserUID(String userUID);

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>> saveSeriesDraft(
    Series seriesDraft,
  );
}
