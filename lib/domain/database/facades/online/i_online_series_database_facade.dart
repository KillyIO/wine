import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/models/series.dart';

/// @nodoc
abstract class IOnlineSeriesDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> deleteSeries(
    String seriesUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> deleteSeriesCover(
    String coverURL,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadBookmarkedSeriesListByUserUID(String userUID, {Series lastSeries});

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadNewSeriesList(
    Map<String, dynamic> filters, {
    Series lastSeries,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesAsMapByUIDList(List<String> seriesUID);

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesBookmarksCount(String seriesUID);

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesByUID(
    String seriesUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadSeriesListByUserUID(
    String userUID, {
    Series lastSeries,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesLikesCount(
    String seriesUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadSeriesViewsCount(
    String seriesUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadTopSeriesList(
    Map<String, dynamic> filters, {
    Series lastSeries,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      loadUserBookmarkStatus({
    @required String userUID,
    @required String seriesUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> loadUserLikeStatus({
    @required String userUID,
    @required String seriesUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> publishSeries(
    Series series,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesBookmarksAndBookmarksCount({
    @required String userUID,
    @required String seriesUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesLikesAndLikesCount({
    @required String userUID,
    @required String seriesUID,
    bool isInit = false,
    Series series,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      updateSeriesViewsAndViewsCount({
    @required String userUID,
    @required String seriesUID,
    bool isInit = false,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SeriesDatabaseSuccess>> uploadCover(
    File cover,
  );
}
