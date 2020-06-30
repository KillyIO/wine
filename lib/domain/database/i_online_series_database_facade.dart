import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/series.dart';

abstract class IOnlineSeriesDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadNewSeries({
    Series lastSeries,
    @required Map<String, dynamic> filters,
    bool loadAuthors = false,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesAsMapByUidList(List<String> seriesUids);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesBookmarksCount(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesByUid(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesByUserId(String uid, {Series lastSeries});
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesLikesCount(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadSeriesViewsCount(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadTopSeries({
    Series lastSeries,
    @required Map<String, dynamic> filters,
    bool loadAuthors = false,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserBookmarkStatus({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserLikeStatus({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishSeries(Series series);
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesBookmarks({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesLikesAndLikesCount({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSeriesViews({
    @required String userUid,
    @required String seriesUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> uploadCover(File cover);
}
