import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/series.dart';

abstract class IOnlineSeriesDatabaseFacade {
  Future<Either<DatabaseFailure, Series>> createSeries(Series series);
  Future<Either<DatabaseFailure, Series>> getSeriesById(String uid);
  Future<Either<DatabaseFailure, List<Series>>> getSeriesByUserId(
    String uid, {
    Series lastSeries,
  });
  Future<Either<DatabaseFailure, List<Series>>> getTopSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
  });
  Future<Either<DatabaseFailure, List<Series>>> getNewSeries({
    Series lastSeries,
    Map<String, dynamic> filters,
  });
  Future<Either<DatabaseFailure, Map<String, Series>>> getSeriesAsMapByUidList(
    List<String> seriesUids,
  );
}
