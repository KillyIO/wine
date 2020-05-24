import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/series.dart';

abstract class IOnlineSeriesDatabaseFacade {
  Future<Either<DatabaseFailure, Series>> publishSeries(Series series);
  Future<Either<DatabaseFailure, Series>> getSeriesByUid(String uid);
  Future<Either<DatabaseFailure, List<Series>>> getSeriesByUserId(
    String uid, {
    Series lastSeries,
  });
  Future<Either<DatabaseFailure, List<Series>>> getTopSeries({
    Series lastSeries,
    @required Map<String, dynamic> filters,
  });
  Future<Either<DatabaseFailure, List<Series>>> getNewSeries({
    Series lastSeries,
    @required Map<String, dynamic> filters,
  });
  Future<Either<DatabaseFailure, Map<String, Series>>> getSeriesAsMapByUidList(
    List<String> seriesUids,
  );
  Future<Either<DatabaseFailure, int>> getSeriesLikesCount(String seriesUid);
  Future<Either<DatabaseFailure, bool>> getUserLikeStatus({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, Unit>> updateSeriesLikesAndLikesCount({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, int>> getSeriesViewsCount(String seriesUid);
  Future<Either<DatabaseFailure, Unit>> updateSeriesViewsAndViewsCount({
    @required String userUid,
    @required String seriesUid,
  });
}
